return {
  "ellisonleao/glow.nvim",
  ft = "markdown",
  lazy = true,
  cmd = "Glow",
  config = true,
  opts = {
    border = "rounded",
    width_ratio = 1.0, -- maximum width of the Glow window compared to the nvim window size (overrides `width`)
    height_ratio = 1.0,
  },
}
