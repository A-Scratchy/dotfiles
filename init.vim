" =================== NVIM CONFIG - SCRATCHYDEV =================

" =====================PLUGINS================================
call plug#begin('~/.nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch' : 'release'}
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'dikiaap/minimalist'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdcommenter'
Plug 'andys8/vim-elm-syntax', { 'for': ['elm'] }
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'OrangeT/vim-csharp'
Plug 'shime/vim-livedown'
Plug 'airblade/vim-gitgutter'
Plug 'wikitopian/hardmode'
Plug 'qpkorr/vim-bufkill'
Plug 'tpope/vim-markdown'

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
" set autochdir                           " Your working directory will always be the same as your working directory
set title
set hlsearch
set showmode
set showcmd
set scrolloff=6
filetype plugin on

"==============================================================
"==========================KEY MAPPINGS=======================
"map leader to spcae bar
let mapleader=" "
" exit insert mode with jk or kj
inoremap jk <Esc>
inoremap kj <Esc>
" Better window navigation
nnoremap <leader>wh <C-w>h
nnoremap <leader>wk <C-w>k
nnoremap <leader>wj <C-w>j
nnoremap <leader>wl <C-w>l
nnoremap  <leader>ww <C-w>w
nnoremap  <leader>nt :NERDTreeToggle<CR>
nnoremap  <leader>wb :vertical resize +10<CR>
nnoremap  <leader>ws :vertical resize -10<CR>
" move lines up and down like in vs code
noremap <S-Up> ddkP
noremap <S-Down> ddp
" working with files
nnoremap <leader>fw :w<CR>
nnoremap <leader>fq :q<CR>
nnoremap <leader>fwq :wq<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fh :History<CR>
nnoremap <leader>fg :GFiles<CR>
" useful stuff
nnoremap <leader>h :noh<CR>
nnoremap <leader>g :Gstatus<CR>
nnoremap <leader>r :register<CR>
nnoremap oo o<Esc>
nnoremap OO O<Esc>
" working with buffers
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bl :Buffers<CR> 
nnoremap <leader>bu :BUN<CR>
nnoremap <leader>bd :BD<CR>

"=============================================================
"=========================AIRLINE==============================
" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_inactive_collapse=1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#unicode#enabled = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline_inactive_alt_sep=1
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#nerdtree_statusline = 1
let g:airline#extensions#omnisharp#enabled = 1


" enable powerline fonts
let g:airline_powerline_fonts = 1
" Switch to your current theme

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ' '
let g:airline_symbols.dirty='⚡'

"==============================================================
"========================NERDTree==============================
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatuline = ''
au VimEnter *  NERDTree

"==============================================================
"=========================COC================================
" coc extensions
let g:coc_global_extensions = ['coc-emmet', 'coc-lists', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-eslint', 'coc-omnisharp', 'coc-markdownlint']
"
" TextEdit might fail if hidden is not set.
set hidden
"
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
"
" Give more space for displaying messages.
set cmdheight=2
"
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
"
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
"
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
"
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
"
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
"
" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
"
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
"
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
"
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
"
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
"
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
"
" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
"
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
"
" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
"
" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
"
" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
"
" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif
"
" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)
"
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
"
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
"
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
"
" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"
" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
" format using prettier by typing :Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" user Alt-f to format file
noremap <M-f> :Prettier
"coc-highlights
highlight CocErrorFloat ctermfg=Red
highlight CocFloating ctermbg=Black

"================================================================
"=======================TSX config===============================
"" by default .ts file are not identified as typescript and .tsx files are not
" identified as typescript react file, so add following
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

" ===============================================================
"=======================NERD commenter ==========================
noremap <C-/> <leader>c<space><CR>

"================================================================
"================================INDENT==========================
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"================================================================
"=========================NERDTREE GIT===========================
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'',
                \ 'Staged'    :'烙',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'',
                \ 'Unknown'   :'?',
                \ }
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusShowClean = 1 

"===============================================================
"===================== STYLECOP errors added ===================
let &l:makeprg = 'dotnet build .'
let &l:errorformat = ' %#%f(%l\,%c): %m'
"
"===============================================================
"===================== GitGutter ===============================
noremap <leader>gg :GitGutterLineHighlightsToggle<CR>
let g:gitgutter_sign_added = ''
let g:gitgutter_sign_modified = '➜'
let g:gitgutter_sign_removed = '✖'
let g:gitgutter_sign_removed_first_line = '^^'
let g:gitgutter_sign_removed_above_and_below = '{'
let g:gitgutter_sign_modified_removed = ''
highlight GitGutterAddLine    ctermbg=22
highlight GitGutterChangeLine ctermbg=17
highlight GitGutterDeleteLine ctermbg=52
highlight SignColumn ctermfg=244 ctermbg=53

"===============================================================
"======================= HARDMODE =============================
let g:HardMode_level = 'wannabe'
let g:HardMode_hardmodeMsg = 'Don''t use this!'
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

"==============================================================
"=======================INSERT COLOR CHANGE====================
"
highlight Normal ctermbg=232

augroup InsertColorChange
    autocmd!
    autocmd InsertEnter * highlight Normal ctermbg=52
    autocmd InsertLeave * highlight Normal ctermbg=232
augroup END

augroup AutoPretty
    autocmd!
    autocmd InsertLeave * :Format
augroup END

"==============================================================
"===================HIGHLIGHT ACTIVE WINDOW====================
augroup ActiveWindow
    autocmd!
    autocmd WinEnter * set cursorline 
    autocmd WinLeave * set nocursorline
augroup END
"==============================================================
"======================MARKDOWN================================
let g:markdown_syntax_conceal = 0
