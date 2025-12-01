return {
  "SmiteshP/nvim-navic",
  event = "LspAttach",
  opts = {
    lsp = {
      auto_attach = true,
      preference = { "typescript-tools" },
    },
  },
}
