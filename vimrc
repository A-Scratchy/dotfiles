
" VUNDLE STUFF ==============================================
set nocompatible              
filetype off                 

let mapleader=" "

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf
"
" ================================= PLUGINS ================
"
call plug#begin('~/.vim/plugged') " ========================================START PLUGINS


" Plug 'VundleVim/Vundle.vim'
Plug 'preservim/nerdtree' 
" Bundle 'https://github.com/gko/vim-coloresque.git'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'ervandew/supertab'
Plug 'flazz/vim-colorschemes'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'pseewald/vim-anyfold'
Plug 'arecarn/vim-fold-cycle'
Plug 'junegunn/fzf', { 'dir' : '~/.fzf', 'do' : './install --all' } 
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

call plug#end()  " ==========================================END PLUGINS
" ==========================================================
filetype plugin indent on 

colorscheme molokai

" mappings
execute "set <A-j>=\ej"
execute "set <A-k>=\ek"
noremap <F4> :NERDTreeToggle<CR>
noremap <leader>j :bn<CR>
noremap <leader>k :bp<CR>
noremap <F6>  :GitGutterLineHighlightsToggle<CR>
noremap <leader>h :noh<CR>
noremap <leader>d  o<Esc>
noremap <leader>j 10j
noremap <leader>k 10k
noremap <leader>[ {o
noremap <leader>] }O
noremap <leader>e :lnext<CR>
noremap <leader>E :lprevious<CR>

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

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
set numberwidth=6
set foldmethod=syntax
let g:gitgutter_signs = 0
let g:gitgutter_highlight_linenrs = 0

filetype plugin indent on
syntax on

" =============== Anyfold
autocmd Filetype * AnyFoldActivate
set foldlevel=99

" activate anyfold by default
augroup anyfold
    autocmd!
    autocmd Filetype <filetype> AnyFoldActivate
augroup END
" ============================

" disable anyfold for large files
let g:LargeFile = 1000000 " file is large if size greater than 1MB
autocmd BufReadPre,BufRead * let f=getfsize(expand("<afile>")) | if f > g:LargeFile || f == -2 | call LargeFile() | endif
function LargeFile()
    augroup anyfold
        autocmd! " remove AnyFoldActivate
        autocmd Filetype <filetype> setlocal foldmethod=indent " fall back to indent folding
    augroup END
endfunction


" Change color when inset mode is on
highlight Normal ctermbg=235
au InsertEnter * highlight Normal ctermbg=52
au InsertLeave * highlight Normal ctermbg=235

"====================== NERDTREE
 let g:NERDTreeShowHidden = 1
 let g:NERDTreeMinimalUI = 1
 let g:NERDTreeIgnore = []
 let g:NERDTreeStatuline = ''

" ============ recommended by syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ================  airlines config
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

