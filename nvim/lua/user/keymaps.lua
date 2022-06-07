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

keymap("n", "<F2>", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>g", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>tg", "<cmd>Telescope current_buffer_fuzzy_find<cr>", opts)
keymap("n", "<leader>ts", "<cmd>Telescope git_status<cr>", opts)
keymap("n", "<leader>tc", "<cmd>Telescope git_bcommits<cr>", opts)
keymap("n", "<leader>th", "<cmd>Telescope command_history<cr>", opts)
keymap("n", "<leader>tm", "<cmd>Telescope keymaps<cr>", opts)
keymap("n", "<leader>tp", "<cmd>Telescope commands<cr>", opts)
keymap("n", "<C-p>", "<cmd>Telescope commands<cr>", opts)

keymap("n", "<leader>xx", "<cmd>TroubleToggle<cr>", opts)
keymap("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", opts)
keymap("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", opts)
keymap("n", "gr", "<cmd>TroubleToggle lsp_references<cr>", opts)

keymap("n", "<leader>bb", "<cmd>BufferLinePick<cr>", opts)
keymap("n", "<leader>bd", "<cmd>bd<cr>", opts)
keymap("n", "<leader>bD", "<cmd>bd!<cr>", opts)

