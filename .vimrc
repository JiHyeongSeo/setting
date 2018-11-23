set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
call plug#begin('~/.vim/plugged')
Plug 'gmarik/Vundle.vim'
Plug 'vim-scripts/indentpython.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'jnurmine/Zenburn'
Plug 'altercation/vim-colors-solarized'
Plug 'dracula/vim'
Plug 'scrooloose/nerdtree'
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'shime/vim-livedown'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
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
" syntax enable
set background=dark
colorscheme solarized 

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

let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_key_list_previous_completion = ['<S-TAB>']
let g:ycm_key_list_stop_completion = ['<C-y>', '<CR>']

" FZF
set rtp+=~/.fzf
command! -bang -nargs=+ -complete=dir Ag call fzf#vim#ag_raw(<q-args>, <bang>0)

" ackag
let g:ackprg = 'ag --nogroup --nocolor --column'

" map vim tab key
map <c-t> :tabnew<CR>
map <c-w> :tabclose<CR>
