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
					markdown = { "prettierd" },
					-- javascript = { "prettier" },
					-- typescript = { "prettier" },
					-- javascriptreact = { "prettier" },
					-- json = { "prettier" },
					-- html = { "prettier" },
					-- python = { "black" },
					-- ckl = { "prettier" },
				},
			})

			-- Format on save
			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*",
				callback = function(args)
					require("conform").format({ bufnr = args.buf })
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
