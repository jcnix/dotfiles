-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.keymap.set("n", "gR", vim.lsp.buf.references, { desc = "References Quickfix" })
vim.keymap.set(
  "n",
  "gR",
  "<cmd>Trouble lsp_references toggle auto_refresh=false win.position=bottom<CR>",
  { desc = "References (Trouble)" }
)

vim.keymap.set("n", "<leader>gC", function()
  Snacks.picker.git_branches()
end, { desc = "Git Branches" })
