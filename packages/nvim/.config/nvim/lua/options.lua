local opt = vim.opt

-- Basic Settings
opt.autochdir = false
opt.autoread = true
opt.backspace = 'indent,eol,start'
opt.backup = false
opt.fileencoding = 'utf-8'
opt.hidden = true
opt.showcmd = true
opt.swapfile = false
opt.mouse = 'r'

-- Visual Settings
opt.background = 'dark'
opt.cursorline = true
opt.laststatus = 2
opt.number = true
opt.showmatch = true
opt.smartindent = true
opt.synmaxcol = 1000
opt.syntax = 'on'
opt.virtualedit = 'onemore'
opt.visualbell = true
opt.wildmode = 'list:longest'

-- Edit Settings
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.ttimeoutlen = 1000
opt.foldmethod = 'syntax'
opt.foldlevel = 100

-- Search Settings
opt.hlsearch = true
opt.ignorecase = true
opt.incsearch = true
opt.smartcase = true
opt.wrapscan = true

-- Plugin Loading
vim.cmd('packadd vim-jetpack')
require('jetpack.packer').startup(function(use)
  use { 'tani/vim-jetpack', opt = 1 } -- bootstrap
  use 'ConradIrwin/vim-bracketed-paste'
  use 'Shougo/deoplete.nvim'
  use 'digitaltoad/vim-pug'
  use 'editorconfig/editorconfig-vim'
  use 'github/copilot.vim'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-path'
  use 'junegunn/fzf.vim'
  use 'iamcco/mathjax-support-for-mkdp'
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'
  use 'kana/vim-operator-replace'
  use 'kana/vim-operator-user'
  use 'kyazdani42/nvim-web-devicons'
  use 'lambdalisue/vim-pager'
  use 'leafgarland/typescript-vim'
  use 'lepture/vim-jinja'
  use 'mopp/autodirmake.vim'
  use 'nathanaelkane/vim-indent-guides'
  use 'neovim/nvim-lspconfig'
  use 'ntpeters/vim-better-whitespace'
  use 'prettier/vim-prettier'
  use 'sainnhe/gruvbox-material'
  use 'sheerun/vim-polyglot'
  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-liquid'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'williamboman/mason-lspconfig.nvim'
  use 'williamboman/mason.nvim'
  use { 'glepnir/lspsaga.nvim', branch = 'main' }
  use { 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install' }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'lambdalisue/fern.vim'
  use 'lewis6991/gitsigns.nvim'
  use 'machakann/vim-sandwich'
  use 'monaqa/dial.nvim'
end)
