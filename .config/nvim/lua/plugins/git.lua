return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()

      vim.keymap.set("n", "<leader>gp", "<CMD>Gitsigns preview_hunk<CR>", {desc = "Preview Git Hunk" } )
      vim.keymap.set("n", "<leader>gb", "<CMD>Gitsigns toggle line_blame<CR>", {desc = "Toggle Line Blame" } )
    end
  },
  {
    "tpope/vim-fugitive",
  }
}
