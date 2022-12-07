vim.keymap.set('n', ',f', ':GFiles<CR>', { noremap = true, silent = true })
vim.keymap.set('n', ',F', ':GFiles?<CR>', { noremap = true, silent = true })
vim.keymap.set('n', ',b', ':Buffers<CR>', { noremap = true, silent = true })
vim.keymap.set('n', ',l', ':BLines<CR>', { noremap = true, silent = true })
vim.keymap.set('n', ',h', ':History<CR>', { noremap = true, silent = true })
vim.keymap.set('n', ',m', ':Mark<CR>', { noremap = true, silent = true })