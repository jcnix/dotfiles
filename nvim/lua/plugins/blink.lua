return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      list = {
        selection = {
          preselect = false,
        },
      },
      menu = {
        border = "rounded",
      },
      documentation = {
        window = {
          border = "rounded",
        },
      },
    },
    keymap = {
      preset = "enter",
      ["<Tab>"] = { "select_and_accept", "fallback" },
    },
  },
}
