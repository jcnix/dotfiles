return {
  "folke/snacks.nvim",
  --@type snacks.Config
  opts = {
    picker = {
      sources = {
        explorer = {
          hidden = true,
        },
        files = {
          hidden = true,
        },
        grep = {
          hidden = true,
        },
      },
    },
    gitbrowse = {
      url_patterns = {
        ["github%..*.com"] = {
          branch = "/tree/{branch}",
          file = "/blob/{branch}/{file}#L{line_start}-L{line_end}",
          permalink = "/blob/{commit}/{file}#L{line_start}-L{line_end}",
          commit = "/commit/{commit}",
        },
      },
    },
  },
}
