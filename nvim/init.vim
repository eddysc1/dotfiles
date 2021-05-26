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
set ignorecase
set smartcase

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
Plug 'mkitt/tabline.vim'
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

nnoremap <C-j> :tabnext<CR>
nnoremap <C-k> :tabprev<CR>

autocmd BufEnter * call ncm2#enable_for_buffer()

if has('nvim') && exists('g:fzf_layout')
  autocmd! FileType fzf
  autocmd  FileType fzf set laststatus=0 noshowmode
    \| autocmd BufLeave <buffer> set laststatus=2 showmode
  let $FZF_DEFAULT_OPTS .= ' --no-info'
endif
