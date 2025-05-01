return {
  "Isrothy/neominimap.nvim",
  version = "v3.*.*",
  dependencies = { "lewis6991/gitsigns.nvim" },
  enabled = true,
  lazy = false,
  config = function()
    vim.opt.wrap = false
    vim.opt.sidescrolloff = 36

    vim.g.neominimap = {
      auto_enable = true,
    }
  end
}
