local formatters = {
	"stylua",
	"black",
	"prettier",
	"prettierd",
}

return {
	{
		"stevearc/conform.nvim",

		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					markdown = { "prettier" },
					javascript = { "prettier" },
					typescript = { "prettier" },
					javascriptreact = { "prettier" },
					typescriptreact = { "prettier" },
					scss = { "prettier" },
					json = { "prettier" },
					-- jsonc = { "prettier" },
					html = { "prettier" },
					python = { "black" },
					-- ckl = { "prettier" },
				},
				-- format_on_save = {
				-- These options will be passed to conform.format()
				-- timeout_ms = 500,
				-- lsp_format = "fallback",
				-- },
			})

			-- Format on save
			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*",
				callback = function(args)
					local cwd = vim.fn.getcwd()
					-- Only format if not in work/ directory
					-- if not string.match(cwd, "/work/") then
						require("conform").format({ async = true, bufnr = args.buf })
					-- end
				end,
			})
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					"stylua",
					"prettier",
					"prettierd",
				},
			})
		end,
	},
}
