return {
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"c",
					"lua",
					"vim",

					"markdown",
					"markdown_inline",
					"json",

					"rust",
					"python",

					"javascript",
					"typescript",
					"html",
					"graphql",
					"prisma",

					"java",

					"fish",
				},
				highlight = {
					enable = true,
					disable = function(lang, buf)
						local max_filesize = 100 * 1024 -- 100 kb
						local ok, file_stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
						if ok and file_stats and file_stats.size > max_filesize then
							return true
						end
					end,

					-- disable = {
					-- 	"markdown",
					-- 	-- "lua",
					-- },
					-- additional_vim_regex_highlighting = true,
				},
				indent = {
					enable = true,
				},
			})
		end,
	},
}
