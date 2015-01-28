set tabstop=4
set shiftwidth=4
set expandtab
filetype indent on
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'https://github.com/907th/vim-auto-save'



call vundle#end()            " required
filetype plugin indent on    " required
let g:auto_save = 1
execute pathogen#infect()
syntax on
filetype on

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>

set foldmethod=indent
set foldlevel=99

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

map <leader>g :GundoToggle<CR>
let g:pyflakes_use_quickfix = 0

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
map <leader>dt :set makeprg=python\ manage.py\ test\|:call MakeGreen()<CR>
