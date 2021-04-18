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

call plug#begin()
Plug 'lifepillar/vim-solarized8'
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

let g:solarized_termtrans=1
colorscheme solarized8
highlight LineNr gui=NONE guibg=#002B36
highlight CursorLineNr gui=NONE guibg=#002B36
highlight StatusLine gui=NONE guibg=#002B36
highlight StatusLineNC gui=NONE guibg=#002B36
highlight ColorColumn gui=NONE guibg=#002B36
highlight SignColumn gui=NONE guibg=#002B36
highlight VertSplit gui=NONE guibg=#00141A guifg=#00141A

let mapleader = ' '
let g:netrw_banner = 0
let g:ale_linters = {'php': ['phpstan']}
let g:ale_linters_explicit = 1
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 1
let g:ale_set_signs = v:false
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 0
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

nnoremap <C-l> :ALEReset<CR>:ALELint<CR>

nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>

autocmd BufEnter * call ncm2#enable_for_buffer()

if has('nvim') && exists('g:fzf_layout')
  autocmd! FileType fzf
  autocmd  FileType fzf set laststatus=0 noshowmode
    \| autocmd BufLeave <buffer> set laststatus=2 showmode
  let $FZF_DEFAULT_OPTS .= ' --no-info'
endif
