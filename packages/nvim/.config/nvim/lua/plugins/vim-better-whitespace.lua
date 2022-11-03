vim.cmd("let g:better_whitespace_filetypes_blacklist=['diff', 'gitcommit', 'unite', 'qf', 'help', 'markdown']")
vim.cmd('autocmd BufWritePre * :StripWhitespace')
