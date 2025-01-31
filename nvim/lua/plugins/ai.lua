return {
	{
		"zbirenbaum/copilot.lua",
		config = function()
			require("copilot").setup({
				suggestion = {
					hide_during_completion = false,
					auto_trigger = true,
					keymap = {
						accept = "<Tab>",
					},
				},
			})
		end,
		enabled = true,
	},
	{
		"supermaven-inc/supermaven-nvim",
		config = function()
			require("supermaven-nvim").setup({
				keymaps = {
					accept_suggestion = "<Tab>",
				},
				log_level = "info",
			})
		end,
		enabled = false,
	},
	{
		"jhossepmartinez/supermaven-status.nvim",
		dependencies = {
			"supermaven-inc/supermaven-nvim",
		},
	},
}
