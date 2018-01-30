set relativenumber
colorscheme desert
syntax on "turn on syntax highlight
set incsearch " incremental search
set hlsearch  " search highlight
set pastetoggle=<F3>
" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
command -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>
inoremap <C-S> <C-O>:Update<CR>
vnoremap <C-S> <C-O>:Update<CR>

"-- Turn on autoindent
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
set expandtab
