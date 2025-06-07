local lsp = vim.lsp
local api = vim.api

local function get_root_dir(bufnr)
	local root_files = {
		".eslintrc",
		".eslintrc.js",
		".eslintrc.cjs",
		".eslintrc.yaml",
		".eslintrc.yml",
		".eslintrc.json",
		"eslint.config.js",
		"eslint.config.mjs",
		"eslint.config.cjs",
		"eslint.config.ts",
		"eslint.config.mts",
		"eslint.config.cts",
		"package.json",
	}

	local fname = api.nvim_buf_get_name(bufnr)
	local dir = vim.fs.dirname(fname)

	-- Check for package.json with eslintConfig
	local package_json = vim.fs.find("package.json", { path = dir, upward = true })[1]
	if package_json then
		local content = vim.fn.readfile(package_json)
		if content and #content > 0 then
			local ok, json = pcall(vim.json.decode, table.concat(content, "\n"))
			if ok and json and json.eslintConfig then
				return vim.fs.dirname(package_json)
			end
		end
	end

	-- Check for other eslint config files
	for _, file in ipairs(root_files) do
		local found = vim.fs.find(file, { path = dir, upward = true })[1]
		if found then
			return vim.fs.dirname(found)
		end
	end

	return dir
end

local function setup_eslint()
	local root_dir = get_root_dir(0)
	local settings = {
		validate = "on",
		packageManager = nil,
		useESLintClass = false,
		experimental = {
			useFlatConfig = false,
		},
		codeActionOnSave = {
			enable = false,
			mode = "all",
		},
		format = true,
		quiet = false,
		onIgnoredFiles = "off",
		rulesCustomizations = {},
		run = "onType",
		problems = {
			shortenToSingleLine = false,
		},
		nodePath = "",
		workingDirectory = { mode = "location" },
		codeAction = {
			disableRuleComment = {
				enable = true,
				location = "separateLine",
			},
			showDocumentation = {
				enable = true,
			},
		},
	}

	-- Check for flat config
	local flat_config_files = {
		"eslint.config.js",
		"eslint.config.mjs",
		"eslint.config.cjs",
		"eslint.config.ts",
		"eslint.config.mts",
		"eslint.config.cts",
	}

	for _, file in ipairs(flat_config_files) do
		if vim.fn.filereadable(root_dir .. "/" .. file) == 1 then
			settings.experimental.useFlatConfig = true
			break
		end
	end

	-- Check for Yarn PnP
	local cmd = { "vscode-eslint-language-server", "--stdio" }
	local pnp_cjs = root_dir .. "/.pnp.cjs"
	local pnp_js = root_dir .. "/.pnp.js"
	if vim.uv.fs_stat(pnp_cjs) or vim.uv.fs_stat(pnp_js) then
		cmd = vim.list_extend({ "yarn", "exec" }, cmd)
	end

	local client_id
	local on_attach = function(client, bufnr)
		client_id = client.id

		api.nvim_buf_create_user_command(bufnr, "LspEslintFixAll", function()
			client:exec_cmd({
				title = "Fix all Eslint errors for current buffer",
				command = "eslint.applyAllFixes",
				arguments = {
					{
						uri = vim.uri_from_bufnr(bufnr),
						version = lsp.util.buf_versions[bufnr],
					},
				},
			}, { bufnr = bufnr })
		end, {})
	end

	local handlers = {
		["eslint/openDoc"] = function(_, result)
			if result then
				vim.ui.open(result.url)
			end
			return {}
		end,
		["eslint/confirmESLintExecution"] = function(_, result)
			if not result then
				return
			end
			return 4 -- approved
		end,
		["eslint/probeFailed"] = function()
			vim.notify("ESLint probe failed.", vim.log.levels.WARN)
			return {}
		end,
		["eslint/noLibrary"] = function()
			vim.notify("Unable to find ESLint library.", vim.log.levels.WARN)
			return {}
		end,
		["eslint/noConfig"] = function()
			vim.notify("No ESLint configuration found.", vim.log.levels.WARN)
			return {}
		end,
	}

	local capabilities = vim.lsp.protocol.make_client_capabilities()
	capabilities.workspace = {
		configuration = true,
		workspaceFolders = true,
	}

	local config = {
		cmd = cmd,
		filetypes = {
			"javascript",
			"javascriptreact",
			"javascript.jsx",
			"typescript",
			"typescriptreact",
			"typescript.tsx",
			"vue",
			"svelte",
			"astro",
		},
		root_dir = root_dir,
		settings = settings,
		on_attach = on_attach,
		handlers = handlers,
		capabilities = capabilities,
	}

	-- Start the LSP client
	lsp.start_client(config)
end

-- Setup ESLint for supported filetypes
vim.api.nvim_create_autocmd("FileType", {
	pattern = {
		"javascript",
		"javascriptreact",
		"javascript.jsx",
		"typescript",
		"typescriptreact",
		"typescript.tsx",
		"vue",
		"svelte",
		"astro",
	},
	callback = function(args)
		setup_eslint(args.buf)
	end,
})

-- Optional: Auto-format on save
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = {
		"*.js",
		"*.jsx",
		"*.ts",
		"*.tsx",
		"*.vue",
		"*.svelte",
		"*.astro",
	},
	callback = function(args)
		local clients = vim.lsp.get_active_clients({ bufnr = args.buf })
		for _, client in ipairs(clients) do
			if client.name == "vscode-eslint-language-server" then
				vim.cmd("LspEslintFixAll")
				break
			end
		end
	end,
})
