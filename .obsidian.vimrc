inoremap jk <Esc>
nnoremap <silent> gW :tabclose!<cr>
nnoremap <silent> gw :tabclose<cr>
nnoremap <silent> gh :tabprev<cr>
nnoremap <silent> gj :tabnext<cr>
nnoremap <silent> gt :tabnew<cr>
nnoremap <silent> <space> za
noremap i gk
noremap j h
noremap k gj
noremap I {
noremap K }
noremap h i
noremap H I

syntax enable

" Indentation, spaces, tabs
filetype plugin indent on
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=8

" User interface configurations
set colorcolumn=120  " Set vertical color line at this column
set cursorline       " Highlight the current row where the cursor is
set lazyredraw       " Screen will not be redrawn while running macros, it should update after
set nocompatible     " Legacy flag. vim runs in a mode not compatible with vi.  NeoVim is always nocompatible.
set noerrorbells     " Don't play a bell sound or flash the screen when there are errors.
set number           " Show line numbers
set ruler            " Show the line number and character column in the status line or last line of screen.
set scrolloff=5      " Minimum number of lines to show below and above the cursor.
set showcmd          " Shows the (partial) command recently run at the bottom of the screen.
set showmatch        " Show matches to brackets and parentheses.
set smartcase        " If you have a mIxEd case search term, automatically ignores any ignorecase setting.
set smarttab         " Sensible tab space handling.  Inserts/deletes a `shiftwidth` of spaces when using tab/backspace.
set textwidth=0      " Disable automatically wrapping text after reaching a margin

nnoremap <Enter> :set hlsearch!<cr>
set hlsearch!
set incsearch

set backspace=indent,eol,start

set clipboard=unnamedplus
