local opt = vim.opt

-- Line Number
opt.relativenumber = true
opt.number = true -- shows absolute line number on cursor line (when relative number is on)
opt.cursorline = true

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
opt.iskeyword = "@,48-57,_,192-255,-" -- Treat dash as `word` textobject

-- Appearance
opt.termguicolors = true
opt.signcolumn = "yes:1"
opt.scrolloff = 5

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Line Wrapping
opt.wrap = false

-- Basic Style
vim.api.nvim_set_hl(0, "Comment", { italic = true })
opt.fillchars = { eob = " " }

-- Fold Style
opt.fillchars:append({ foldopen = "", foldsep = " ", foldclose = "", vert = "▏" })

-- Providers
vim.g.python3_host_prog = "/usr/bin/python3"

opt.wildmode = "noselect:lastused,full"
