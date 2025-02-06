local actions = require("fzf-lua.actions")

return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = function(_, opts)
      opts.files["actions"] = {
        ["ctrl-i"] = { actions.toggle_ignore },
        ["ctrl-h"] = { actions.toggle_hidden },
        ["ctrl-g"] = false,
      }

      opts.grep["actions"] = {
        ["ctrl-i"] = { actions.toggle_ignore },
        ["ctrl-h"] = { actions.toggle_hidden },
        ["ctrl-g"] = false,
      }
    end,
  },
  {
    "folke/noice.nvim",
    config = function()
      require("noice").setup({
        cmdline = {
          view = "cmdline",
        },
        presets = {
          bottom_search = true,
          command_palette = true,
          lsp_doc_border = true,
        },
      })
    end,
  },
  {
    "amrbashir/nvim-docs-view",
    lazy = true,
    cmd = "DocsViewToggle",
    opts = {
      position = "right",
      width = 60,
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy", -- Load this plugin on the 'VeryLazy' event
    requires = { "nvim-tree/nvim-web-devicons", opt = true }, -- Optional dependency for icons
    opts = {
      options = {
        theme = "kanagawa", -- Set the theme for lualine
        icons_enabled = true, -- Enable icons in the statusline
      },
      sections = {
        lualine_a = {
          {
            "mode", -- Display the current mode
            icon = "󱗞", -- Set the icon for the mode
          },
        },
      },
    },
  },
  {
    "echasnovski/mini.nvim",
    version = false, -- Use the latest version
    config = function()
      require("mini.animate").setup({
        resize = {
          enable = false, -- Disable resize animations
        },
        open = {
          enable = false, -- Disable open animations
        },
        close = {
          enable = false, -- Disable close animations
        },
        scroll = {
          enable = false, -- Disable scroll animations
        },
      })
    end,
  },
}
