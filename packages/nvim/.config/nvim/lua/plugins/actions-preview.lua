return {
  "aznhe21/actions-preview.nvim",
  event = "LspAttach",
  keys = {
    { "<leader>cp", function() require("actions-preview").code_actions() end, desc = "Code actions preview" },
  },
  opts = {},
}
