return {
	-- {
	-- 	"norcalli/nvim-colorizer.lua",
	-- 	config = function()
	-- 		require("colorizer").setup({
	-- 			"*",
	-- 			css = {
	-- 				rgb_fn = true,
	-- 				hsl_fn = true,
	-- 				names = true,
	-- 			},
	-- 		})
	-- 	end,
	-- },
	{
		"eero-lehtinen/oklch-color-picker.nvim",
		event = "VeryLazy",
		version = "*",
		keys = {
			-- One handed keymap recommended, you will be using the mouse
			{
				"<leader>v",
				function()
					require("oklch-color-picker").pick_under_cursor()
				end,
				desc = "Color pick under cursor",
			},
		},
		---@type oklch.Opts
		opts = {},
	},
	{
		"numToStr/Comment.nvim",
		lazy = false,
		config = true,
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
