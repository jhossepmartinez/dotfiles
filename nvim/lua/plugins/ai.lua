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
	},
}
