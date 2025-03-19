---@type LazySpec
return {
  "OXY2DEV/markview.nvim",
  enabled = true,
  lazy = false, -- Recommended
  -- ft = "markdown" -- If you decide to lazy-load anyway

  dependencies = {
    -- You will not need this if you installed the
    -- parsers manually
    -- Or if the parsers are in your $RUNTIMEPATH
    "nvim-treesitter/nvim-treesitter",

    "nvim-tree/nvim-web-devicons",
  },

  opts = function()
    local presets = require "markview.presets"

    return {
      code_blocks = {
        sign = false,
        min_width = 80,
      },
      checkboxes = {
        enable = true,
        presets = presets.checkboxes.nerd,
      },

      preview = {
        -- This is nice to have
        callbacks = {
          on_enable = function(_, win)
            vim.wo[win].conceallevel = 2
            vim.wo[win].concealcursor = "c"
          end,
        },
        -- For hybrid mode:
        modes = { "n", "no", "c" }, -- Change these modes to what you need
        hybrid_modes = { "n" }, -- Uses this feature on normal mode
      },

      markdown = {
        headings = presets.headings.slanted,
        -- headings = {
        --   enable = false,
        -- heading_1 = {
        --   shift_char = "",
        --   sign = " ",
        --   hl = "DiagnosticOk",
        -- },
        -- heading_2 = {
        --   shift_char = "",
        --   sign = " ",
        --   hl = "DiagnosticHint",
        -- },
        -- heading_3 = {
        --   shift_char = "",
        --   sign = " ",
        --   hl = "DiagnosticInfo",
        -- },
        -- heading_4 = {},
        -- heading_5 = {},
        -- heading_6 = {},
        -- setext_1 = {},
        -- setext_2 = {},
        -- },
        list_items = {
          enable = true,
          indent_size = 2,
          shift_width = 3,
          marker_minus = {
            -- When true, paddings are added to list items
            add_padding = true,

            text = "➤",
            hl = "MarkviewListItemStar",
          },
        },
      },
    }
  end,
}
