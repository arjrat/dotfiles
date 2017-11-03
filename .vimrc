set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin 'vim-syntastic/syntastic'

Plugin 'scrooloose/nerdtree'

Plugin 'kien/ctrlp.vim'

Plugin 'scwood/vim-hybrid'

Plugin 'yggdroot/indentline'

Plugin 'itchyny/lightline.vim'

Plugin 'raimondi/delimitmate'

Plugin 'ervandew/supertab'
" Plugin 'Valloric/YouCompleteMe'

Plugin 'easymotion/vim-easymotion'

Plugin 'airblade/vim-gitgutter'

Plugin 'bronson/vim-trailing-whitespace'

Plugin 'tpope/vim-commentary'

Plugin 'xuhdev/vim-latex-live-preview'

Plugin 'lervag/vimtex'

Plugin 'dracula/vim'

Plugin 'fatih/vim-go'

Plugin 'derekwyatt/vim-scala'

Plugin 'SirVer/ultisnips'

Plugin 'honza/vim-snippets'

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
syntax on
" allow backspacing over everything in insert mode
set bs=indent,eol,start
" save 50 lines of command line history
set history=50
" show cursor position
set ruler
" Ignore case for file completion
set wildignorecase

" show existing tabs as 4 spaces
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Ignore case for searches
set ignorecase
" Highlight search terms as you type
set incsearch
set hlsearch

" set background=dark
" let g:hybrid_custom_term_colors = 1
colorscheme dracula

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

" neovim python paths
let g:python_host_prog  = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'
let g:ycm_python_binary_path = 'python'

"" SRC https://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
"" YouCompleteMe
let g:ycm_key_list_previous_completion=['<Up>']

"" Ultisnips
let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsListSnippets="<c-s-tab>"


" gitgutter
if has('nvim')
    set signcolumn=yes
else
    let g:gitgutter_sign_column_always = 1
endif

" ctrlp
" do not use .git directory as base path
" let g:ctrlp_working_path_mode = 'a'
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'open -a Preview'
let g:tex_conceal = ""
" This lets you use tab in filename autocompletion to see directory listing
" as otherwise you tab through each file
set wildmenu
set wildmode=longest,list
" vim autopep8
au FileType python setlocal formatprg=autopep8\ -


