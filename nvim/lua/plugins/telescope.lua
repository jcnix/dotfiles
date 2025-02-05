return {
  "nvim-telescope/telescope.nvim",
  opts = {
    pickers = {
      live_grep = {
        additional_args = function()
          return { "--hidden" }
        end,
      },
    },
    defaults = {
      mappings = {
        i = {
          ["<C-j>"] = "move_selection_next",
          ["<C-k>"] = "move_selection_previous",
        },
      },
    },
  },
}
