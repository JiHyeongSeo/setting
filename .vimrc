set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
call plug#begin('~/.vim/plugged')
Plug 'gmarik/Vundle.vim'
Plug 'vim-scripts/indentpython.vim'
Plug 'jnurmine/Zenburn'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'tmhedberg/SimpylFold'
Plug 'Valloric/YouCompleteMe'
Plug 'davidhalter/jedi-vim'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'altercation/vim-colors-solarized'
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
call plug#end()
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
" syntax enable

" Line Numbering
set nu

" NerdTree mapping key
map <F3> :NERDTreeToggle<cr>

" FZF
set rtp+=~/.fzf
command! -bang -nargs=+ -complete=dir Ag call fzf#vim#ag_raw(<q-args>, <bang>0)

" ackag
let g:ackprg = 'ag --nogroup --nocolor --column'

" simplyfold
let g:SimpylFold_docstring_preview=1
let g:SimpylFold_fold_docstring=0
set foldlevel=99

" YCM
let g:ycm_autoclose_preview_window_after_completion=1
map <space>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

" powerline
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set laststatus=2
