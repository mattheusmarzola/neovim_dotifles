call plug#begin()
Plug 'morhetz/gruvbox'

Plug 'terryma/vim-multiple-cursors'

Plug 'sheerun/vim-polyglot'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'jiangmiao/auto-pairs'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'scrooloose/nerdtree'
call plug#end()

colorscheme gruvbox
set background=dark

set hidden
set number
set relativenumber
set mouse=a
set inccommand=split

let mapleader="\<space>"
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>

" -------------- "
" NERDTREE "
" -------------- "
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror


" -------------- "
