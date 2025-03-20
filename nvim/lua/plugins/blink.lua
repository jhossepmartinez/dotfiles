return {
	{
		"saghen/blink.cmp",
		dependencies = {
			"L3MON4D3/LuaSnip",
			version = "v2.*",
			config = function()
				require("luasnip.loaders.from_vscode").lazy_load()
			end,
			dependencies = { "rafamadriz/friendly-snippets" },
		},
		version = "*",
		---@module 'blink.cmp'
		---@type blink.cmp.Config
		opts = {
			completion = {
				menu = {
					draw = {
						columns = {
							{ "label", "label_description", gap = 1 },
							{ "kind_icon", "kind", "source_name", gap = 1 },
						},
						treesitter = { "lsp" },
					},
				},
				documentation = {
					auto_show = true,
					auto_show_delay_ms = 500,
				},
			},
			snippets = { preset = "luasnip" },
			keymap = { preset = "enter" },
			signature = { enabled = true },
			sources = {
				default = { "lsp", "buffer", "path", "snippets" },
			},

			fuzzy = { implementation = "prefer_rust_with_warning" },
		},
	},
}
