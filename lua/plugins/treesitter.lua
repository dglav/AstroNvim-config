-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    highlight = {
      enable = true,
    },
    indent = { enable = true },
    ensure_installed = {
      "lua",
      "vim",
      "markdown", -- for markview
      "markdown_inline", -- for markview
      "html", -- for markview
    },
  },
}
