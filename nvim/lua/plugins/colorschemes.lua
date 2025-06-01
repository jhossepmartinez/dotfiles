return {
	{
		"maxmx03/solarized.nvim",
		config = function()
			vim.o.background = "dark"
			require("solarized").setup({
				variant = "winter", -- "spring" | "summer" | "autumn" | "winter" (default)
				styles = {
					comments = { italic = true },
				},
				on_highlights = function(colors, color)
					return {
						StatusLine = { bg = "NONE" },
						StatusLineNC = { bg = "NONE" },
					}
				end,
			})
		end,
	},
	{
		"EdenEast/nightfox.nvim",
	},
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

	{ "rose-pine/neovim", name = "rose-pine" },
	{ "heraldofsolace/nisha-vim" },
	{
		"Tsuzat/NeoSolarized.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
	},
}
