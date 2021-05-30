call plug#begin()
Plug 'ayu-theme/ayu-vim'
Plug 'lumiliet/vim-twig'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'phpactor/phpactor', {'for': 'php', 'branch': 'master', 'do': 'composer install --no-dev -o'}
Plug 'phpactor/ncm2-phpactor'
Plug 'jwalton512/vim-blade'
Plug 'mkitt/tabline.vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

let mapleader = ' '
let g:netrw_banner = 0

autocmd BufEnter * call ncm2#enable_for_buffer()
