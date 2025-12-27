return {
	{
		"maxmx03/solarized.nvim",
		config = function()
			vim.o.background = "dark"
			require("solarized").setup({
				variant = "winter", -- "spring" | "summer" | "autumn" | "winter" (default)
				transparent = { enabled = true, pmenu = false },
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
}
