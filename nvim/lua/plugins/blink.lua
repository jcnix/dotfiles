return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      list = {
        selection = "manual",
      },
      menu = {
        border = "rounded",
      },
      documentation = {
        window = {
          border = "rounded",
        },
      },
      ghost_text = {
        enabled = true,
      },
    },
    keymap = {
      preset = "super-tab",
      ["<C-j>"] = { "select_next" },
      ["<C-k>"] = { "select_prev" },
    },
  },
}
