local keymap = vim.keymap.set

keymap("n", "<Esc>", "<cmd>nohlsearch<CR>")

keymap("i", "jj", "<Esc>")

keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")

keymap("n", "<C-w>H", "<C-w><")
keymap("n", "<C-w>J", "<C-w>-")
keymap("n", "<C-w>K", "<C-w>+")
keymap("n", "<C-w>L", "<C-w>>")
keymap("n", "<C-w>=", "<C-w>=")

keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

keymap({ "n", "v" }, "<leader>y", '"+y')
