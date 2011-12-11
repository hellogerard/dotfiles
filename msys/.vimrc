""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Generally global options
"

" Vim is not compatible with vi, which is more useful
set nocompatible

" Ignore case by default when searching
set ic

" Do not ignore case if the search pattern contains uppercase characters
set smartcase

" Highlight search matches
set hlsearch

" Incremental search
set incsearch

" Number of spaces to use for tab characters
set tabstop=4

" Number of spaces to use for indents
set shiftwidth=4

" Use shiftwidth spaces for indents instead of tabs
set expandtab

" Use shiftwidth spaces for tab characters
" (also backspace deletes shiftwidth chars)
set smarttab

" Copy indent from current line when starting new line
set autoindent

" For C-like programs, indent smartly e.g. after opening braces
set smartindent

" c = auto-wrap comments using textwidth
" r = automatically insert the current comment leader in command mode
" o = automatically insert the current comment leader in insert mode
" q = allow formatting with "gq"
set formatoptions=croq

" Maximum width of text that is being inserted
set textwidth=80

" ' = maximum number of previously edited files to be remembered
set viminfo='1

" Show the line and column number of the cursor position, and percentage of file
set ruler

" When a bracket, paren, etc. is inserted, briefly jump to the matching one
set showmatch

" Show possible commands during command-line completion
set wildmenu

" Show possible files during file-line completion
set wildmode=list:longest

" Always show the status line
set laststatus=2

" Save modified file when changing buffers
set autowrite

" no swapfiles
set noswapfile
set nobackup
set nowb

" Turn syntax highlighting on according to filetype
syntax on

" Vim will look for filetype plugins
filetype plugin on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set filetype options (mostly indentation)
"

autocmd FileType html setlocal shiftwidth=2 tabstop=2 
autocmd FileType css setlocal shiftwidth=2 tabstop=2 
autocmd FileType smarty setlocal shiftwidth=2 tabstop=2 
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 
autocmd FileType eruby setlocal shiftwidth=2 tabstop=2 
autocmd FileType haml setlocal shiftwidth=2 tabstop=2 
autocmd FileType scss setlocal shiftwidth=2 tabstop=2 
autocmd FileType sass setlocal shiftwidth=2 tabstop=2 
autocmd BufRead,BufNewFile *.phtml set shiftwidth=2 tabstop=2
autocmd FileType php setlocal comments=s1:/*,mb:*,ex:*/,://,:#



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Might not want to include below for shell accounts
"

" Set gvim window colors and font
"highlight Normal guibg=grey95
"colorscheme elflord
set gfn=Courier_New:h9:w5:b:cANSI

" Use vim-included diff for diffing files
set diffexpr=MyDiff()
function MyDiff()
  let opt = ''
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  silent execute '!diff -a ' . opt . v:fname_in . ' ' . v:fname_new . ' > ' . v:fname_out
endfunction
