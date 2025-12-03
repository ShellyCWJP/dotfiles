vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("config")

local local_config = vim.fn.expand("~/.config/nvim/local.lua")
if vim.fn.filereadable(local_config) == 1 then
  dofile(local_config)
end
