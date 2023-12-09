local opts = { noremap = true, silent = true }
-- shorten fn name
local keymap = vim.keymap.set

-- leader
vim.g.mapleader = '-'
vim.g.maplocalleader = '-'

-- get out of insert mode with jk
keymap("i", "jk", "<ESC>", opts)

-- capital Q should not do anything!
keymap("n", "Q", "<nop>")

-- remove search highlight
keymap("n", "<leader> ", ":nohlsearch<CR>")

