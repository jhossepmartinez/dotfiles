local formatters = {
	"stylua",
	-- "black",
	"prettier",
	"prettierd",
	-- "eslint_d", -- Remember to install eslint_d globally
	"php-cs-fixer",
}

return {
	{
		"stevearc/conform.nvim",

		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					-- markdown = { "prettier" },
					-- javascript = { "prettier" },
					-- typescript = { "prettier" },
					-- javascriptreact = { "prettier" },
					-- typescriptreact = { "prettier" },
					javascript = { "prettier" },
					typescript = { "prettierd" },
					javascriptreact = { "prettier" },
					typescriptreact = { "prettier" },
					scss = { "prettier" },
					json = { "prettier" },
					jsonc = { "prettier" },
					html = { "prettier" },
					python = { "black" },
					php = { "php_cs_fixer" },
					-- ckl = { "prettier" },
				},
				format_after_save = {
					lsp_format = "fallback",
				},
				formatters = {
					php_cs_fixer = {
						command = "php-cs-fixer",
						args = {
							"fix",
							"$FILENAME",
							"--config=.php-cs-fixer.php",
						},
					},
				},
			})

			-- -- Format on save
			-- vim.api.nvim_create_autocmd("BufWritePre", {
			-- 	pattern = "*",
			-- 	callback = function(args)
			-- 		local cwd = vim.fn.getcwd()
			-- 		-- Only format if not in work/ directory
			-- 		-- if not string.match(cwd, "/work/") then
			-- 		require("conform").format({ async = true, bufnr = args.buf })
			-- 		-- end
			-- 	end,
			-- })
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = formatters,
			})
		end,
		enabled = false,
	},
}
