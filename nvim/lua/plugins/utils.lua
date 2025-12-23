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
	{
		"lewis6991/hover.nvim",
		config = function()
			require("hover").setup({
				init = function()
					-- require("hover.providers.diagnostic")
					require("hover.providers.lsp")
				end,
				-- preview_opts = {
				-- 	border = none,
				-- },
				preview_window = true,
				title = true,
				mouse_providers = {
					"LSP",
				},
				mouse_delay = 1000,
			})
			-- Setup keymaps
			vim.keymap.set("n", "K", require("hover").hover, { desc = "hover.nvim" })
			vim.keymap.set("n", "gK", require("hover").hover_select, { desc = "hover.nvim (select)" })
			-- vim.keymap.set("n", "<C-p>", function()
			-- 	require("hover").hover_switch("previous")
			-- end, { desc = "hover.nvim (previous source)" })
			vim.keymap.set("n", "<C-n>", function()
				require("hover").hover_switch("next")
			end, { desc = "hover.nvim (next source)" })
		end,
	},
}
