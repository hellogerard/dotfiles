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

" Backspace through everything in insert mode
set backspace=indent,eol,start

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

" Turn off line wrapping
set nowrap

" Always open vertically split files on the right-hand side
set splitright

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

" Use vim-included diff for diffing files
set diffexpr=MyDiff()
function MyDiff()
  let opt = ''
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  silent execute '!diff -a ' . opt . v:fname_in . ' ' . v:fname_new . ' > ' . v:fname_out
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set filetype options (mostly indentation)
"

autocmd FileType html setlocal shiftwidth=2 tabstop=2 
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 
autocmd FileType css setlocal shiftwidth=2 tabstop=2 
autocmd FileType smarty setlocal shiftwidth=2 tabstop=2 
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 
autocmd FileType eruby setlocal shiftwidth=2 tabstop=2 
autocmd FileType haml setlocal shiftwidth=2 tabstop=2 
autocmd FileType scss setlocal shiftwidth=2 tabstop=2 
autocmd FileType sass setlocal shiftwidth=2 tabstop=2 
autocmd FileType coffee setlocal shiftwidth=2 tabstop=2 
autocmd BufRead,BufNewFile *.less set filetype=css
autocmd BufRead,BufNewFile *.json set filetype=javascript
autocmd BufRead,BufNewFile *.phtml set shiftwidth=2 tabstop=2
autocmd BufRead,BufNewFile *.slimbars set filetype=slim
autocmd FileType php setlocal comments=s1:/*,mb:*,ex:*/,://,:#
autocmd FileType gitcommit call setpos('.', [0, 1, 1, 0])



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Command-T/Ctrl-P settings (https://github.com/kien/ctrlp.vim)
"

set runtimepath^=~/.vim/bundle/ctrlp.vim

" Use this option to change the mapping to invoke CtrlP in |Normal| mode:
let g:ctrlp_map = '<Leader>t'

" When starting up, CtrlP sets its local working directory according to this
" variable:
" 0 - dont manage working directory.
" 1 - the parent directory of the current file.
" 2 - the nearest ancestor that contains one of these directories or files:
"     .git/ .hg/ .svn/ .bzr/ _darcs/
let g:ctrlp_working_path_mode = 0

" Set this to 1 to set searching by filename (as opposed to full path) as the default
let g:ctrlp_by_filename = 1

" Change the listing order of the files in the match window. The default setting
" (1) is from bottom to top:
let g:ctrlp_match_window_reversed = 0

" In addition to |'wildignore'|, use this for files and directories you want
" only CtrlP to not show. Use regexp to specify the patterns:
let g:ctrlp_custom_ignore = '\.meteor\|\.git\|\.svn\|\.log\|.DS_Store\|node_modules\|vendor\|data'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI vim options - might not want to include below for shell accounts
"

" Set gvim highlighting
"highlight Normal guibg=grey95

" Set gvim color scheme
colorscheme desert

" Set gvim font
set gfn=Monaco:h11
