""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors
"

" Set color scheme
colorscheme desert

" Set font
set gfn=Monaco:h11

" Turn syntax highlighting on according to filetype
syntax on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spaces, not Tabs
"

" Number of spaces to use for tab characters
set tabstop=2

" Number of spaces to use for indents
set shiftwidth=2

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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search
"

" Ignore case by default when searching
set ic

" Do not ignore case if the search pattern contains uppercase characters
set smartcase

" Highlight search matches
set hlsearch

" Incremental search
set incsearch


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing
"

" Vim is not compatible with vi, which is more useful
set nocompatible

" Backspace through everything in insert mode
set backspace=indent,eol,start

" Turn off line wrapping
set nowrap

" Maximum width of text that is being inserted
set textwidth=80

" ' = maximum number of previously edited files to be remembered
set viminfo='1

" Save modified file when changing buffers
set autowrite

" No swapfiles
set noswapfile

" No backups (!)
set nobackup
set nowb

" Use vim-included diff for diffing files
set diffexpr=MyDiff()
function! MyDiff()
  let opt = ''
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  silent execute '!diff -a ' . opt . v:fname_in . ' ' . v:fname_new . ' > ' . v:fname_out
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UI
"

" Always open vertically split files on the right-hand side
set splitright

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

" Highlight current line
set cursorline

" Show current cmd (and visual selection) in bottom right
set showcmd

" Avoid unnecessary redraws
set lazyredraw

" netrw uses tree-style file listing
let g:netrw_liststyle = 3

" Do not save netrw directory history files
let g:netrw_dirhistmax = 0


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable Pathogen
"

execute pathogen#infect()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File Types
"

" Vim will look for filetype plugins
filetype plugin on

augroup configgroup
  autocmd!
  autocmd FileType php setlocal shiftwidth=2 tabstop=2
  autocmd BufRead,BufNewFile *.cjsx set filetype=coffee
  autocmd BufRead,BufNewFile *.less set filetype=css
  autocmd BufRead,BufNewFile *.json set filetype=javascript
  autocmd BufRead,BufNewFile *.slimbars set filetype=slim
  autocmd BufRead,BufNewFile *.handlebars set filetype=html
  autocmd BufRead,BufNewFile *.gs set filetype=javascript
  autocmd BufRead,BufNewFile *.md set filetype=markdown
  autocmd BufRead,BufNewFile *.phtml set filetype=html
  autocmd FileType php setlocal comments=s1:/*,mb:*,ex:*/,://,:#
  autocmd FileType gitcommit call setpos('.', [0, 1, 1, 0])
augroup END

" Apply jsx syntax highlighting to js files too
let g:jsx_ext_required = 0 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERD Commenter options (https://github.com/scrooloose/nerdcommenter)

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-grepper options (https://github.com/mhinz/vim-grepper)
"

" Command to prompt for a query
nnoremap <leader>g :Grepper -tool git<cr>

" Command to search for word under the cursor
nnoremap <leader>* :Grepper -tool git -cword -noprompt<cr>

" Initialize options
let g:grepper = {}
" Highlight found matches
let g:grepper.highlight = 1

" Only show the tool name in the prompt, without any of its arguments
let g:grepper.simple_prompt = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrl-P settings (https://github.com/ctrlpvim/ctrlp.vim)
"

set runtimepath^=~/.vim/bundle/ctrlp.vim

" Use this option to change the mapping to invoke CtrlP in |Normal| mode:
let g:ctrlp_map = '<Leader>t'

" When starting up, CtrlP sets its local working directory according to this
" variable:
" 0 - do not manage working directory.
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
let g:ctrlp_custom_ignore = '\.meteor\|\.git\|\.svn\|\.demeteorized\|\.log\|.DS_Store\|node_modules\|vendor\|data\|dump\|build\|.gagarin'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic settings (https://github.com/scrooloose/syntastic)
"

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"" Always display detected errors in the location list
"let g:syntastic_always_populate_loc_list = 1
"
"" Automatically open error window (in location list) when errors are detected
"let g:syntastic_auto_loc_list = 1
"
"" Run checks when buffers are first loaded, as well as on save
"let g:syntastic_check_on_open = 1
"
"" Don't check when you quit/close vim
"let g:syntastic_check_on_wq = 0
"
"" Enable active mdoe for javascript files, otherwise passive
"let g:syntastic_mode_map = {
"    \ "mode": "passive",
"    \ "active_filetypes": ["javascript"],
"    \ "passive_filetypes": [] }
"
"" Enable these checkers
"let g:syntastic_javascript_checkers = ["eslint"]
