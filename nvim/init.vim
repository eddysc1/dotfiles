call plug#begin()

" Color themes
Plug 'ayu-theme/ayu-vim'
Plug 'gruvbox-community/gruvbox'

" Tabs
Plug 'mkitt/tabline.vim'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Lsp
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'hrsh7th/nvim-compe'

" Php
Plug 'phpactor/phpactor', {'for': 'php', 'branch': 'master', 'do': 'composer install --no-dev -o'}
Plug 'jwalton512/vim-blade'
Plug 'lumiliet/vim-twig'

call plug#end()
