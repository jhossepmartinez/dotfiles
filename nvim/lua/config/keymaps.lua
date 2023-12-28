
local keymap = vim.keymap.set

-- General
keymap("i", "jk", "<ESC>")

-- Split window management
keymap("n", "<Leader>cs", ":close<CR>")

keymap("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })
keymap("n", "<Leader>q", ":bp<bar>sp<bar>bn<bar>bd<CR>", { desc = "Close current buffer"})
-- keymap("n", "zz", "<cmd>w<CR>", { desc = "Save current buffer" })
