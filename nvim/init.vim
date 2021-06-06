call plug#begin()
Plug 'ayu-theme/ayu-vim'
Plug 'lumiliet/vim-twig'
Plug 'phpactor/phpactor', {'for': 'php', 'branch': 'master', 'do': 'composer install --no-dev -o'}
Plug 'jwalton512/vim-blade'
Plug 'mkitt/tabline.vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'hrsh7th/nvim-compe'
call plug#end()

let mapleader = ' '
let g:netrw_banner = 0
