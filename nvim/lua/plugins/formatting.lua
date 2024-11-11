local formatters = {
	"stylua",
	-- "black",
	"prettier",
	"prettierd",
	-- "eslint_d", -- Remember to install eslint_d globally
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
					-- javascript = { "eslint_d" },
					-- typescript = { "eslint_d" },
					-- javascriptreact = { "eslint_d" },
					-- typescriptreact = { "eslint_d" },
					scss = { "prettier" },
					json = { "prettier" },
					jsonc = { "prettier" },
					html = { "prettier" },
					python = { "black" },
					-- ckl = { "prettier" },
				},
				format_after_save = {
					lsp_format = "fallback",
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
	},
}
