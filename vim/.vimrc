syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu 
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set mouse=a
set ruler
" set cursorline 
set relativenumber
set scrolloff=7
set background=dark
set sidescrolloff=5


" set colorcolumn=80

highlight ColorColumn ctermbg=0 guibg=lightgray
set nocompatible              " required
filetype off                  " required

set number

" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'preservim/nerdtree'
Plugin 'jaredgorski/spacecamp'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1

"call plug
"Plug 'voldikss/vim-floaterm'
"call plug


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme PaperColor


"map <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <F2> :NERDTreeToggle /home/mlad/<CR>

let g:NERDTreeNodeDelimiter = "\u00a0"
set backspace=indent,eol,start
autocmd FileType python map <buffer> <F3> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F3> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Plugin 'vim-scripts/indentpython.vim'
"let python_highlight_all=1
"" Enable folding
set foldmethod=indent
set foldlevel=99

""Syntaxing checkinh/hilighting:
"Plugin 'vim-syntastic/syntastic'
"Plugin 'tpope/vim-fugitive'

" Enable folding with the spacebar
"nnoremap <space> za

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
"colorscheme gruvbox
set bg=dark
