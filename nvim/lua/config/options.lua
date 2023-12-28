local opt = vim.opt -- for conciseness

-- Line Number
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)
opt.cursorline = false

-- Tabs & Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.smarttab = true

-- Search Settings
opt.ignorecase = true
opt.smartcase = true

-- Appearance
opt.termguicolors = false
opt.signcolumn = "yes:1"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Line Wrapping
opt.wrap = false

vim.api.nvim_set_hl(0, 'Comment', { italic=true })
