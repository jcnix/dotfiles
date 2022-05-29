local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

keymap("n", "<Space>wk", ":wincmd k", opts)
keymap("n", "<Space>wj", ":wincmd j", opts)
keymap("n", "<Space>wh", ":wincmd h", opts)
keymap("n", "<Space>wl", ":wincmd l", opts)

