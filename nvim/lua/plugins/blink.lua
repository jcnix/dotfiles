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
      preset = "enter",
      ["<Tab>"] = { "select_and_accept", "fallback" },
      ["<C-j>"] = { "select_next", "fallback" },
      ["<C-k>"] = { "select_prev", "fallback" },
    },
  },
}
