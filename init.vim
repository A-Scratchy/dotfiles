" =================== NVIM CONFIG - SCRATCHY =================
"
" =====================PLUGINS================================
call plug#begin('~/.nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch' : 'release'}
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'


call plug#end()
" ===========================================================
" ========================SETTINGS===========================
set relativenumber number               " Line numbers
syntax enable                           " Enables syntax highlighing
set list                                " Show tabs
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler                               " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                        " treat dash separated words as a word text object"
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4                           " Insert 4 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set autochdir                           " Your working directory will always be the same as your working directory
set title
set hlsearch
set showmode
set showcmd
set scrolloff=6

"==============================================================
"==========================KEY MAPPINGS=======================
"map leader to spcae bar
let mapleader=" "
" exit insert mode with jk or kj
inoremap jk <Esc>
inoremap kj <Esc>
" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>
" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
noremap <F4> :NERDTreeToggle<CR>
noremap <leader>h :noh<CR>
" serach in directory using FZF
noremap <C-p> :Files<CR>
noremap <A-<Up> ddP
noremap <A-<Down> ddp
"=============================================================
"=========================AIRLINE==============================
" enable tabline
let g:airline#extensions#tabline#enabled = 1
" enable powerline fonts
let g:airline_powerline_fonts = 1
" Switch to your current theme
let g:airline_theme = 'molokai'

"==============================================================
"========================NERDTree==============================
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatuline = ''

"==============================================================
"=======================INSERT COLOR CHANGE====================
highlight Normal ctermbg=232
au InsertEnter * highlight Normal ctermbg=52
au InsertLeave * highlight Normal ctermbg=232

"==============================================================
"=========================COC================================
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

