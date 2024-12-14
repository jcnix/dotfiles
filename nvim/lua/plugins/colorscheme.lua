return {
  "folke/tokyonight.nvim",
  lazy = false,
  opts = {
    style = "moon",
    on_colors = function(colors)
      colors.border = "orange"
    end,
    on_highlights = function(highlights, colors)
      highlights.BlinkCmpMenuBorder = {
        fg = "orange",
      }
      highlights.BlinkCmpGhostText = {
        fg = "white",
      }
      highlights.BlinkCmpDocBorder = {
        fg = "orange",
      }
    end,
  },
}
