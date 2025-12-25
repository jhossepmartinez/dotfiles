return {
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({
				"*",
				css = {
					rgb_fn = true,
					hsl_fn = true,
					names = true,
				},
				typescriptreact = {
					rgb_fn = true,
					hsl_fn = true,
					css = true,
				},
			})
		end,
	},
	{
		"numToStr/Comment.nvim",
		lazy = false,
		config = true,
		enabled = false,
	},
	{
		"kylechui/nvim-surround",
		version = "*",
		event = "VeryLazy",
		config = true,
	},
	{
		"windwp/nvim-autopairs",
		config = true,
	},
}
