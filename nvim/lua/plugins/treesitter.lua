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

					"javascript",
					"html",
				},
				highlight = {
					enable = true,
					disable = {
						"markdown",
						"lua",
					},
					-- additional_vim_regex_highlighting = true
				},
				indent = {
					enable = true,
				},
			})
		end,
	},
}
