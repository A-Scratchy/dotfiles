" My VIM RC :-) "

" VUNDLE STUFF ==============================================
set nocompatible              
filetype off                 

let mapleader=","

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"
" ================================= PLUGINS ================
"
call vundle#begin() " ========================================START PLUGINS

Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Bundle 'https://github.com/gko/vim-coloresque.git'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'valloric/youcompleteme'
Plugin 'ervandew/supertab'
Plugin 'flazz/vim-colorschemes'
Plugin 'ryanoasis/vim-devicons'

call vundle#end()  " ==========================================END PLUGINS

filetype plugin indent on 

colorscheme railscasts

" mappings
nnoremap <F4> :NERDTreeToggle<CR>

set hlsearch
set number relativenumber
set title
set scrolloff=3
set sidescrolloff=3
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set showmode
set showcmd
set history=100
set autoread
set hidden

syntax on

" Change color when inset mode is on
highlight Normal ctermbg=232
au InsertEnter * highlight Normal ctermbg=233
au InsertLeave * highlight Normal ctermbg=232

" Change cursor style when in insert mode

" airlines config
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
