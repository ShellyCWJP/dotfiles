-- FIXME: rewrite to nvim_create_autocmd
vim.cmd('let g:indent_guides_auto_colors = 1')
vim.cmd('let g:indent_guides_enable_on_vim_startup = 1')
vim.cmd('autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=gray ctermbg=0')
vim.cmd('autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=gray ctermbg=16')
