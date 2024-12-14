return {
  "folke/tokyonight.nvim",
  lazy = false,
  opts = {
    style = "moon",
    on_colors = function(colors)
      colors.border = "orange"
    end,
    on_highlights = function(highlights, _)
      local floatBorderFg = "#589ed7"

      highlights.BlinkCmpGhostText = {
        fg = "#606060",
      }
      highlights.BlinkCmpMenuBorder = {
        fg = floatBorderFg,
      }
      highlights.BlinkCmpDocBorder = {
        fg = floatBorderFg,
      }
      highlights.FloatBorder = {
        fg = floatBorderFg,
      }
    end,
  },
}
