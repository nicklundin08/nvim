return {
  { "joshdick/onedark.vim" },
  {
    "letieu/btw.nvim",
    config = function()
      require("btw").setup()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
