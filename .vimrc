set nocompatible
filetype off " required for vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Python
Bundle 'python.vim'
Bundle 'python.vim--Vasiliev'
Bundle 'pyflakes.vim'
Bundle 'pydoc.vim'
Bundle 'mako.vim'
Bundle 'mako.vim--Torborg'
" use :Pydoc keyword to search python docs
Bundle 'pep8'
Bundle 'The-NERD-tree'
Bundle 'taglist.vim'
Bundle 'Solarized'

filetype plugin indent on " required for vundle

set number
set nowrap
set noerrorbells
set title

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
                                                                                                                                                                                                                                                      
    au BufRead,BufNewFile *.rb,*.erb,*.rhtml,*.haml set sw=2
    au BufRead,BufNewFile *.rb,*.erb,*.rhtml,*.haml set sts=2
    au BufRead,BufNewFile *.rb,*.erb,*.rhtml,*.haml set tw=78
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
nnoremap <silent> <F6> :TlistToggle<CR>
noremap <leader>b :NERDTreeToggle \| :NERDTreeMirror<CR>
noremap <leader>B :NERDTreeFind<CR>
map <leader>v :sp ~/.vimrc<cr>
map <leader>w :w!<cr>
map <leader>x :tabclose<CR>
map <leader>n :tabnew<CR>
map <silent> <leader>[ :tabprev<CR>
map <silent> <leader>] :tabnext<CR>
