set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'shime/vim-livedown'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let python_version_3=1

" split layouts
set splitbelow
set splitright

" Indentation
au BufNewFile,BufRead *.py
    \ setf tabstop=4
    \ setf softtabstop=4
    \ setf shiftwidth=4
    \ setf textwidth=79
    \ setf expandtab
    \ setf autoindent
    \ setf fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ setf tabstop=2
    \ setf softtabstop=2
    \ setf shiftwidth=2

" UTF-8
set encoding=utf-8

" Syntax checking / Hightlight
syntax on
let python_highlight_all = 1

" Color Schemes
colorscheme zenburn

" Line Numbering
set nu

" NerdTree mapping key
map <F3> :NERDTreeToggle<cr>

" vim-livedown
map <F5> :LivedownToggle <cr>
" should markdown preview get shown automatically upon opening markdown buffer
let g:livedown_autorun = 0
let g:livedown_port = 9595
let g:livedown_open = 1
