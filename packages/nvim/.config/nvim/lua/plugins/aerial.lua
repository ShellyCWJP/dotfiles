return {
  "stevearc/aerial.nvim",
  event = "LspAttach",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { "<localleader><space>", "<cmd>AerialToggle!<cr>", desc = "Toggle Aerial" },
  },
  opts = {},
}
