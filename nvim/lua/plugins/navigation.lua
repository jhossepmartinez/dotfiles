return {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local harpoon = require("harpoon")
			harpoon.setup({})
			vim.keymap.set("n", "<leader>a", function()
				harpoon:list():add()
			end)
			vim.keymap.set("n", "<C-e>", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end)
			vim.keymap.set("n", "<S-h>", function()
				harpoon:list():prev()
			end)
			vim.keymap.set("n", "<S-l>", function()
				harpoon:list():next()
			end)
		end,
	},
	{
		"echasnovski/mini.pick",
		version = false,
		config = function()
			require("mini.pick").setup({})
		end,
		keys = {
			{ "<C-p>", "<cmd>Pick files<CR>" },
			{ "<C-g>", "<cmd>Pick grep_live<CR>" },
		},
	},
}
