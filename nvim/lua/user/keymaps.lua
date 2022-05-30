local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<leader>wk", ":wincmd k<cr>", opts)
keymap("n", "<leader>wj", ":wincmd j<cr>", opts)
keymap("n", "<leader>wh", ":wincmd h<cr>", opts)
keymap("n", "<leader>wl", ":wincmd l<cr>", opts)

keymap("n", "<C-Up>", ":resize +2<cr>", opts)
keymap("n", "<C-Down>", ":resize -2<cr>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<cr>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<cr>", opts)

keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
keymap("v", "p", '"_dP', opts)

keymap("n", "<F2>", ":Explore<CR>", opts)

keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>g", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>d", "<cmd>Telescope current_buffer_fuzzy_find<cr>", opts)
keymap("n", "<leader>ts", "<cmd>Telescope git_status<cr>", opts)
keymap("n", "<leader>tc", "<cmd>Telescope command_history<cr>", opts)
keymap("n", "<C-p>", "<cmd>Telescope commands<cr>", opts)

keymap("n", "gb", "<cmd>BufferLinePick<cr>", opts)

