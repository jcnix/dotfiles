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

keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", opts)
keymap("n", "<leader>fh", "<cmd>Telescope command_history<cr>", opts)
keymap("n", "<leader>fm", "<cmd>Telescope keymaps<cr>", opts)
keymap("n", "<leader>fp", "<cmd>Telescope commands<cr>", opts)
keymap('n', '<leader>fw', "<cmd>Telescope grep_string<cr>", opts)
keymap("n", "<C-p>", "<cmd>Telescope commands<cr>", opts)

keymap("n", "<leader>hh", "<cmd>Telescope git_status<cr>", opts)
keymap("n", "<leader>hg", "<cmd>Telescope git_commits<cr>", opts)
keymap("n", "<leader>hl", "<cmd>Telescope git_bcommits<cr>", opts)
keymap("n", "<leader>hc", "<cmd>Telescope git_branches<cr>", opts)

keymap("n", "<leader>xx", "<cmd>TroubleToggle<cr>", opts)
keymap("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", opts)
keymap("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", opts)
keymap("n", "<leader>xr", "<cmd>TroubleToggle lsp_references<cr>", opts)

keymap("n", "<leader>bb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>bg", "<cmd>BufferLinePick<cr>", opts)
keymap("n", "<leader>bd", "<cmd>bd<cr>", opts)
keymap("n", "<leader>bD", "<cmd>bd!<cr>", opts)

keymap('', '<D-v>', '+p<CR>', opts)
keymap('n', '<leader>P', '"+p', opts)
keymap('!', '<D-v>', '<C-R>+', opts)
keymap('t', '<D-v>', '<C-R>+', opts)
keymap('v', '<D-v>', '<C-R>+', opts)
keymap('v', '<D-c>', '"+y', opts)
keymap('v', '<leader>Y', '"+y', opts)
