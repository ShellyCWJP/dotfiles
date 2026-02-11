return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("nvim-treesitter").setup()

    local ensure_installed = {
      "lua",
      "javascript",
      "typescript",
      "python",
      "json",
      "yaml",
      "html",
      "css",
      "markdown",
      "bash",
      "vim",
      "vimdoc",
    }

    local installed = require("nvim-treesitter").get_installed()
    local to_install = vim.tbl_filter(function(lang)
      return not vim.tbl_contains(installed, lang)
    end, ensure_installed)
    if #to_install > 0 then
      require("nvim-treesitter").install(to_install)
    end

    vim.api.nvim_create_autocmd("FileType", {
      callback = function(ev)
        pcall(vim.treesitter.start, ev.buf)
        vim.bo[ev.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
