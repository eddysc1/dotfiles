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
set noshowmode
set completeopt=noinsert,menuone,noselect
set shortmess+=c
set signcolumn=yes
set hlsearch

call plug#begin()
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-fugitive'
Plug 'lumiliet/vim-twig'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'phpactor/phpactor', {'for': 'php', 'branch': 'master', 'do': 'composer install --no-dev -o'}
Plug 'phpactor/ncm2-phpactor'
Plug 'dense-analysis/ale'
Plug 'jwalton512/vim-blade'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

colorscheme ayu
highlight CursorLineNr guifg=#2D3640 guibg=#0F1419
highlight netrwDir guifg=#36A3D9

let mapleader = ' '
let g:netrw_banner = 0
let g:ale_linters = {'php': ['phpstan']}
let g:ale_sign_error = 'E'
let g:ale_sign_warning = 'W'
let g:fzf_layout = {'down': '30%'}
let g:fzf_preview_window = []

nnoremap <leader>pv :Ex<CR>

vnoremap <leader>p "_dP
nnoremap <leader>d "_d
vnoremap <leader>d "_d
nnoremap <leader>y "+y
vnoremap <leader>y "+y

nnoremap <leader>ic :PhpactorImportClass<CR>
nnoremap <C-]> :PhpactorGotoDefinition<CR>

nnoremap <leader>gu :diffget //2<CR>
nnoremap <leader>gh :diffget //3<CR>

nnoremap <C-p> :Files<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <C-s> :Rg<space>

nnoremap <expr> <CR> {-> v:hlsearch ? ":nohl\<CR>" : "\<CR>"}()

autocmd BufEnter * call ncm2#enable_for_buffer()

if has('nvim') && exists('g:fzf_layout')
  autocmd! FileType fzf
  autocmd  FileType fzf set laststatus=0 noshowmode
    \| autocmd BufLeave <buffer> set laststatus=2 showmode
  let $FZF_DEFAULT_OPTS .= ' --no-info'
endif
