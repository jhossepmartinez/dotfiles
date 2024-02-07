return {
	{
		"embark-theme/vim",
		name = "embark",
	},
	{
		"AustinMay1/Serendipity.nvim",
		-- lazy = false,
		name = "serendipity",
		-- branch = "main"
	},
	{
		"techtuner/aura-neovim",
	},
	{
		"getomni/neovim",
		name = "omni",
		branch = "main",
	},
	{
		"talha-akram/noctis.nvim",
	},
	{
		"Mofiqul/dracula.nvim",
		lazy = false,
		opts = {
			transparent_bg = true,
		},
	},
	{

		"lalitmee/cobalt2.nvim",
		dependencies = { "tjdevries/colorbuddy.nvim" },
		init = function()
			require("colorbuddy").colorscheme("cobalt2")
		end,
	},
	{
		"challenger-deep-theme/vim",
	},
	{
		"cocopon/iceberg.vim",
	},
	{
		"danishprakash/vim-yami",
		lazy = false,
	},
	{
		"uloco/bluloco.nvim",
		lazy = false,
		dependencies = {
			"rktjmp/lush.nvim",
		},
	},
	{
		"navarasu/onedark.nvim",
		lazy = false,
		config = function()
			require("onedark").setup({
				transparent = true,
				term_colors = true,
				style = "dark",
			})
		end,
	},
	{
		"Koalhack/koalight.nvim",
	},
	{
		"fynnfluegge/monet.nvim",
		name = "monet",
		config = function()
			require("monet").setup({
				transparent_background = true,
			})
		end,
	},
	{
		"folke/tokyonight.nvim",
		opts = {
			transparent = true,
		},
	},
	{
		"rose-pine/neovim",
		lazy = false,
		config = function()
			require("rose-pine").setup({
				disable_background = true,
			})
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		opts = {
			transparent = true,
		},
	},
	{
		"catppuccin/nvim",
		-- lzay = false,
		config = function()
			require("catppuccin").setup({
				transparent_background = true,
			})
		end,
	},
	{
		"rhysd/vim-color-spring-night",
	},
	{
		"AlexvZyl/nordic.nvim",
		config = function()
			require("nordic").setup({
				transparent_bg = true,
				override = {},
			})
		end,
	},
	{
		"p00f/alabaster.nvim",
	},
	{
		"Yazeed1s/minimal.nvim",
		config = function()
			vim.g.minimal_transparent_background = true
		end,
	},
	{
		"lighthaus-theme/vim-lighthaus",
		-- lazy = false
	},
	{
		"elvessousa/sobrio",
	},
	{
		"sam4llis/nvim-tundra",
		config = function()
			require("nvim-tundra").setup({
				transparent_background = true,
			})
		end,
	},
	{
		"heraldofsolace/nisha-vim",
		dependencies = {
			"tjdevries/colorbuddy.nvim",
		},
		-- opts = {
		--     background_set = true
		-- }
	},
	{
		"EdenEast/nightfox.nvim",
		-- lazy = false,
		opts = {
			options = {
				transparent = true,
				colorblind = {
					enable = false,
				},
			},
		},
	},
	{
		"muchzill4/doubletrouble",
	},
	{
		"fenetikm/falcon",
	},
	{
		"Rigellute/rigel",
	},
	{
		"terra-theme/terra-core.nvim",
		-- lazy = false,
		opts = {
			theme = "fall",
			variant = "night",
			transparent = true,
		},
	},
	{
		"antonio-hickey/citrus-mist",
	},
	{
		"projekt0n/github-nvim-theme",
		config = function()
			require("github-theme").setup({
				options = {
					transparent = true,
					styles = {
						strings = "italic",
					},
				},
			})
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
	{
		"pineapplegiant/spaceduck",
	},
	{
		"aktersnurra/no-clown-fiesta.nvim",
		opts = {
			transparent = true,
		},
	},
	{
		"sts10/vim-pink-moon",
		-- lazy = false
	},
}
