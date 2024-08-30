-- Mason lspconfig names
local lsp_servers = {
	"lua_ls",
	"vimls",

	"pyright",
	"clangd",
	"rust_analyzer",

	-- "tsserver",
	"html",
	"cssls",
	"tailwindcss",
	"emmet_language_server",
	"eslint",
	-- "angularls",
}

return {
	{
		"williamboman/mason.nvim",
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = lsp_servers,
			})
			local lspconfig = require("lspconfig")
			-- Automatic setup for lsp servers
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local handlers = {
				-- The first entry (without a key) will be the default handler
				-- and will be called for each installed server that doesn't have
				-- a dedicated handler.
				function(server_name) -- default handler (optional)
					require("lspconfig")[server_name].setup({
						capabilities = capabilities,
					})
				end,
				-- Next, you can provide targeted overrides for specific servers.
				["lua_ls"] = function()
					lspconfig.lua_ls.setup({
						settings = {
							Lua = {
								diagnostics = {
									globals = { "vim" },
								},
							},
						},
					})
				end,
			}
			require("mason-lspconfig").setup({ handlers = handlers })

			-- require("mason-lspconfig").setup_handlers({
			-- 	-- Called for each installed server
			-- 	function(server_name)
			-- 		-- local on_attach = lspconfig.on_attach
			-- 		require("lspconfig")[server_name].setup({ capabilities = capabilities }) -- Works even without setting capabilities, maybe enables some options that neovim doesn't support by default
			-- 	end,
			-- 	-- Specific configuration for each server
			-- 	["lua_ls"] = function()
			-- 		lspconfig.lua_ls.setup({
			-- 			settings = {
			-- 				Lua = {
			-- 					diagnostics = {
			-- 						globals = { "vim" },
			-- 					},
			-- 				},
			-- 			},
			-- 		})
			-- 	end,
			--
			-- 	["emmet_language_server"] = function()
			-- 		lspconfig.emmet_language_server.setup({
			-- 			filetypes = { "javascript", "javascriptreact" },
			-- 		})
			-- 	end,
			--
			-- 	["tsserver"] = function()
			-- 		lspconfig.tsserver.setup({
			-- 			-- filetypes = { "javascript", "javascriptreact" },
			-- 		})
			-- 	end,
			--
			-- ["eslint"] = function()
			-- 	lspconfig.eslint.setup({
			-- 		on_attach = function(client, bufnr)
			-- 			-- Enable diagnostics
			-- 			client.server_capabilities.documentFormattingProvider = true
			-- 			client.server_capabilities.documentRangeFormattingProvider = true
			-- 			vim.api.nvim_buf_set_option(bufnr, "formatexpr", "v:lua.vim.lsp.formatexpr()")
			--
			-- 			-- Automatically format on save
			-- 			vim.cmd([[
			-- 				augroup LspAutocommands
			-- 					autocmd! * <buffer>
			-- 					autocmd BufWritePre <buffer> EslintFixAll
			-- 				augroup END
			-- 			]])
			-- 		end,
			-- 		settings = {
			-- 			format = { enable = true },
			-- 			validate = "on",
			-- 		},
			-- 	})
			-- end,
			-- })
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- Disable / Enable inline diagnostics
			vim.diagnostic.config({
				virtual_text = true,
				float = {
					show_header = true,
					source = "always",
					border = "none",
					focusable = true,
				},
			})
		end,
	},
}
