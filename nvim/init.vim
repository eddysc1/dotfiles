syntax on

set guicursor=
set relativenumber
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=4
set colorcolumn=80
set termguicolors
set completeopt=noinsert,menuone,noselect
set shortmess+=c
set hlsearch
set title
set titlestring=%t
set notimeout ttimeout ttimeoutlen=0
set numberwidth=3
set nostartofline
set mouse=n

call plug#begin()
Plug 'ayu-theme/ayu-vim'
Plug 'tpope/vim-fugitive'
Plug 'lumiliet/vim-twig'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'phpactor/phpactor', {'for': 'php', 'branch': 'master', 'do': 'composer install --no-dev -o'}
Plug 'phpactor/ncm2-phpactor'
Plug 'jwalton512/vim-blade'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'ThePrimeagen/harpoon'
call plug#end()

colorscheme ayu
highlight! link CursorLineNr LineNr
highlight netrwDir guifg=#36A3D9

let mapleader = ' '
let g:netrw_banner = 0
let g:fzf_layout = {'down': '30%'}
let g:fzf_preview_window = []

nnoremap <leader>pv :Ex<CR>

nnoremap <leader>d "_d
vnoremap <leader>d "_d
nnoremap <leader>y "+y
vnoremap <leader>y "+y

nnoremap <leader>ic :PhpactorImportClass<CR>
nnoremap <C-]> :PhpactorGotoDefinition<CR>

nnoremap <leader>gf :diffget //2<CR>
nnoremap <leader>gj :diffget //3<CR>

nnoremap <C-p> :Files<CR>
nnoremap <C-s> :Rg<space>

nnoremap <expr> <CR> {-> v:hlsearch ? ":nohl\<CR>" : "\<CR>"}()

nnoremap <leader>a :lua require("harpoon.mark").add_file()<CR>
nnoremap <leader>1 :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <leader>2 :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <leader>3 :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <leader>4 :lua require("harpoon.ui").nav_file(4)<CR>
nnoremap <leader>5 :lua require("harpoon.ui").nav_file(5)<CR>
nnoremap <leader>6 :lua require("harpoon.ui").nav_file(6)<CR>
nnoremap <leader>7 :lua require("harpoon.ui").nav_file(7)<CR>
nnoremap <leader>8 :lua require("harpoon.ui").nav_file(8)<CR>
nnoremap <leader>9 :lua require("harpoon.ui").nav_file(9)<CR>
nnoremap <leader>0 :lua require("harpoon.ui").nav_file(10)<CR>
nnoremap <C-k> :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <leader>t1 :lua require("harpoon.term").gotoTerminal(1)<CR>
nnoremap <leader>t2 :lua require("harpoon.term").gotoTerminal(2)<CR>
nnoremap <leader>c1 :lua require("harpoon.term").sendCommand(1, "php -S 127.0.0.1:8080 -t public\n")<CR>
nnoremap <leader>c2 :lua require("harpoon.term").sendCommand(2, "npm run watch\n")<CR>

autocmd BufEnter * call ncm2#enable_for_buffer()

if has('nvim') && exists('g:fzf_layout')
  autocmd! FileType fzf
  autocmd  FileType fzf set laststatus=0 noshowmode
    \| autocmd BufLeave <buffer> set laststatus=2 showmode
  let $FZF_DEFAULT_OPTS .= ' --no-info'
endif
