return {
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"c",
					"lua",
					"vim",

					"markdown",

					"rust",
					"python",

					"javascript",
					"html",
					"graphql",
					"prisma",
				},
				highlight = {
					enable = true,
					disable = {
						-- "markdown",
						-- "lua",
					},
					-- additional_vim_regex_highlighting = true,
				},
				indent = {
					enable = true,
				},
			})
		end,
	},
}
