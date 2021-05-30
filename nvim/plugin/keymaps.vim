" File navigation
nnoremap <leader>pv :Ex<CR>

" Copy to clipboard, delete to black hole
nnoremap <leader>d "_d
vnoremap <leader>d "_d
nnoremap <leader>y "+y
vnoremap <leader>y "+y

" Php stuff
nnoremap <leader>ic :PhpactorImportClass<CR>
nnoremap <C-]> :PhpactorGotoDefinition<CR>

" File search
nnoremap <C-p> :Files<CR>
nnoremap <C-s> :Rg<space>

" Highlight search, then disable highlight
nnoremap <expr> <CR> {-> v:hlsearch ? ":nohl\<CR>" : "\<CR>"}()

" Scrolling window
nnoremap <Up> <C-y>
nnoremap <Down> <C-e>

" Moving between tabs
nnoremap <Right> gt
nnoremap <Left> gT

" Moving between splits
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

" Make esc leave terminal mode
tnoremap <Esc><Esc> <C-\><C-n>
