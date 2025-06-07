-- Lazy plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Configuration
require("config.options")
require("config.keymaps")
require("config.lsp")

-- Load plugins using lazy
vim.g.mapleader = " " -- mapleader must be loaded before lazy
require("lazy").setup("plugins")

-- Set Colorscheme
-- vim.g.ayucolor = "mirage"
vim.cmd("colorscheme solarized")
-- Nisha theme seems nice

-- Transparency override
local theme = require("config.colorscheme_override")
theme.colorscheme_addon()
theme.transparent_override()
theme.colorscheme_default()

vim.lsp.enable({
    "lua_ls",
})

