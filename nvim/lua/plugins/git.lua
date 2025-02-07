return {
	{
		"tpope/vim-fugitive",
	},
	{
		"kdheepak/lazygit.nvim",
		keys = {
			{ "<Leader>gg", "<cmd>LazyGit<CR>" },
		},
	},
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim", -- required
			"sindrets/diffview.nvim", -- optional - Diff integration

			-- Only one of these is needed.
			-- "nvim-telescope/telescope.nvim", -- optional
			-- "ibhagwan/fzf-lua", -- optional
			-- "echasnovski/mini.pick", -- optional
		},
		config = true,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				current_line_blame = true,
			})
			-- keymaps
			local gitsigns = require("gitsigns")
			local keymap = vim.keymap.set
			keymap("n", "<Leader>rh", function()
				gitsigns.reset_hunk()
			end)
		end,
	},
	{
		"pwntester/octo.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("octo").setup()
		end,
	},
}
