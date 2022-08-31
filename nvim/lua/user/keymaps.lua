local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Window commands
keymap("n", "<C-k>", ":wincmd k<cr>", opts)
keymap("n", "<C-j>", ":wincmd j<cr>", opts)
keymap("n", "<C-h>", ":wincmd h<cr>", opts)
keymap("n", "<C-l>", ":wincmd l<cr>", opts)

keymap("n", "<C-Up>", ":resize +2<cr>", opts)
keymap("n", "<C-Down>", ":resize -2<cr>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<cr>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<cr>", opts)

keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
keymap("v", "p", '"_dP', opts)

-- Nvimtree
keymap("n", "<F2>", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<C-p>", "<cmd>Telescope commands<cr>", opts)

-- Copy and Paste Clipboard
keymap('', '<D-v>', '+p<CR>', opts)
keymap('n', '<leader>P', '"+p', opts)
keymap('!', '<D-v>', '<C-R>+', opts)
keymap('t', '<D-v>', '<C-R>+', opts)
keymap('v', '<D-v>', '<C-R>+', opts)
keymap('v', '<D-c>', '"+y', opts)
keymap('v', '<leader>Y', '"+y', opts)

keymap('n', '<s-l>', ':BufferLineCycleNext<CR>', opts)
keymap('n', '<s-h>', ':BufferLineCyclePrev<CR>', opts)
