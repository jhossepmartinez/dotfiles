local keymap = vim.keymap.set

vim.g.mapleader = " " -- mapleader must be loaded before lazy

-- General
keymap("i", "jk", "<ESC>")
keymap("n", "j", "gj", { noremap = true, silent = true })
keymap("n", "k", "gk", { noremap = true, silent = true })
-- keymap("n", "<C-d>", "<C-d>zz", { noremap = true })
-- keymap("n", "<C-u>", "<C-u>zz", { noremap = true })
-- keymap("n", "j", "gj", { noremap = true, silent = true })

-- Split window management
keymap("n", "<Leader>cs", ":close<CR>")
keymap("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })
keymap("n", "<Leader>q", ":bp<bar>sp<bar>bn<bar>bd<CR>", { desc = "Close current buffer" })
-- keymap("n", "zz", "<cmd>w<CR>", { desc = "Save current buffer" })
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "<C-f>", "<C-f>zz")
keymap("n", "<C-b>", "<C-b>zz")

-- Global diagnostics
keymap("n", "[d", vim.diagnostic.goto_prev)
keymap("n", "]d", vim.diagnostic.goto_next)

-- Lsp
keymap("n", "ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
keymap("n", "<Leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
