local opt = vim.opt -- for conciseness

-- Line Number
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)
opt.cursorline = true
-- opt.colorcolumn = '100'

-- Tabs & Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.smarttab = true

-- Wrapping
opt.wrap = false

-- Search Settings
opt.ignorecase = true
opt.smartcase = true

-- Appearance
opt.termguicolors = true
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- Backspace
opt.backspace = "indent,eol,start"

vim.opt.title = true

-- Clipboard
opt.clipboard:append("unnamedplus")

vim.g.python3_host_prog = "/usr/bin/python3"

-- Cursor Options
-- vim.opt.guicursor = "i-ci-ve:ver25"
-- opt.guicursor = "i:ver1"
-- opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCusor,sm:block-blinkwait175-blinkoff150-blinkon175"


-- opt.scrolloff=0
