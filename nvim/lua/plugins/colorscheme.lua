return {
  -- add tokyo night
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      --  style = "night",
      transparent = true,
      terminal_colors = true,
      styles = {
        sidebars = "transparent",
        floats = "dark",
      },
      on_highlights = function(hl, colors)
        hl.CursorLine = { bg = "#2a2a2a", underline = false }
      end,
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
