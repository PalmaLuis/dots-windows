return {
  -- add tokyo night
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      --  style = "night",
      transparent = true,
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
