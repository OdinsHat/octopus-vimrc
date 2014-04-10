set nocompatible
filetype off " required for vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'

" Python
Plugin 'python.vim'
Plugin 'python.vim--Vasiliev'
Plugin 'pyflakes.vim'
Plugin 'pydoc.vim'
Plugin 'mako.vim'
Plugin 'mako.vim--Torborg'
" use :Pydoc keyword to search python docs
Plugin 'pep8'
Plugin 'The-NERD-tree'
Plugin 'taglist.vim'
Plugin 'Solarized'

filetype plugin indent on " required for vundle

set number
set nowrap
set noerrorbells
set title
set hidden
set novisualbell
set showmatch
set history=1000
set autoread
set title
set ttyfast

" Indentation settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=0
set expandtab
set autoindent
set smartindent
set smarttab

" file-specific autocommands
if has("autocmd")
    au BufNewFile,BufRead *.ctp setfiletype php
    au FileType helpfile set nonumber
    au BufWritePost *.sh !chmod +x %
    au BufRead,BufNewFile *.php,*.js,*.css,*.html set tw=78
endif

set backspace=indent,eol,start

" UI Setings
set cursorline
set list
set listchars=tab:->,trail:- " show tabs and trailing space

" Colour setup
set bg=dark
silent! colorscheme solarized
syntax on

" Search
set hls
set ic
set infercase
set smartcase
set incsearch

" WildMenu settings
set wildmenu
set wildignore=*.o,*.obj,*.so,*.png,*.jpg,*.gif,*.pyc
set wildmode=list:longest

" Backspace
set bs=indent,eol,start

" Status line
set ls=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" Key mappings
let mapleader = ","
nnoremap <silent> <F6> :TlistToggle<CR>
noremap <leader>b :NERDTreeToggle \| :NERDTreeMirror<CR>
noremap <leader>B :NERDTreeFind<CR>
map <leader>v :sp ~/.vimrc<cr>
map <leader>w :w!<cr>
map <leader>x :tabclose<CR>
map <leader>n :tabnew<CR>

set notimeout
if has("autocmd")
    au BufRead,BufNewFile *.html inoremap <buffer> ;d <div><Return><Return></div><Esc><Up>i<Tab>
    au BufRead,BufNewFile *.html inoremap <buffer> ;a <a href=""></a><Esc>F"i
    au BufRead,BufNewFile *.html inoremap <buffer> ;i <img src="" alt="" /></a><Esc>3F"i
endif
