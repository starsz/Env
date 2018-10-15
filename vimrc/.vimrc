"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-Plug Section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
call plug#begin('~/.vim/plugged')

Plug 'ervandew/supertab'
Plug 'mileszs/ack.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'mileszs/ack.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-repeat'
Plug 'Raimondi/delimitMate'
Plug 'junegunn/fzf', { 'dir': '~/Environment/fzf', 'do': './install --all' } 
Plug 'junegunn/fzf.vim' 
Plug 'git://github.com/vim-scripts/taglist.vim.git'
Plug 'git://github.com/tpope/vim-surround.git'
Plug 'git://github.com/scrooloose/nerdtree.git'
Plug 'git://github.com/Xuyuanp/nerdtree-git-plugin'
Plug 'skywind3000/asyncrun.vim'

call plug#end()

filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Setting Section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nu
set cursorline 
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set smartindent

" ack
let g:ackprg = 'ag --nogroup --nocolor --column'

" search
set incsearch
set hlsearch
set ignorecase smartcase 

" delimitMate
let delimitMate_expand_space = 1
au FileType c,c++,python,lua let b:delimitMate_expand_space = 1
let delimitMate_expand_cr = 1
"au FileType c,c++,python,lua let b:delimitMate_expand_cr = 1

"ctags
set tags=tags;/

"fold
set foldenable              
set foldmethod=syntax       
set foldcolumn=0            
setlocal foldlevel=1        
set foldlevelstart=99      
set foldclose=all                         
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

"asyncrun
let g:asyncrun_open = 8

set backspace=indent,eol,start

" autocmd
func! DeleteTrailingWS()
exe "normal mz"
%s/\s\+$//ge
exe "normal `z"
endfunc

autocmd BufWrite * :call DeleteTrailingWS()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Beautiful Section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

" airline
let g:airline_solarized_bg='dark'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Shortcut Section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","

" fzf
nnoremap <silent> <C-p> :Files<CR>

" nedtree
map <C-n> :NERDTreeToggle<CR>

" ack
map <c-u> :Ack<space>

" asyncrun
map <c-a> :AsyncRun<space>
