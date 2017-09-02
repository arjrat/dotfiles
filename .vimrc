set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'kien/ctrlp.vim'

Plugin 'scwood/vim-hybrid'

Plugin 'yggdroot/indentline'

Plugin 'itchyny/lightline.vim'

Plugin 'raimondi/delimitmate'

Plugin 'ervandew/supertab'

Plugin 'easymotion/vim-easymotion'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set t_Co=256

" Ignore case for searches
set ignorecase
" Highlight search terms as you type
set incsearch
set hlsearch

set background=dark
let g:hybrid_custom_term_colors = 1
colorscheme hybrid

set number
set cursorline
set colorcolumn=85
set mouse=a

" NERD tree
" auto-open if no file provided
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = 'v'
" autoclose vim if only thing open is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Bindings
map <C-n> :NERDTreeToggle<CR>

" lightline status bar
set laststatus=2 " required for the bar to appear
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
