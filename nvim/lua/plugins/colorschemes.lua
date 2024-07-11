return {
	{
		"embark-theme/vim",
		name = "embark",
		config = function()
			vim.g.embark_terminal_italics = 1
		end,
	},
	{
		"AlexvZyl/nordic.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("nordic").load()
		end,
	},
	{
		"Shatur/neovim-ayu",
		config = function()
			require("ayu").setup({

				mirage = true,
			})
		end,
	},
	{
		"maxmx03/solarized.nvim",
		config = function()
			vim.o.background = "dark"
			require("solarized").setup({})
		end,
	},
}
