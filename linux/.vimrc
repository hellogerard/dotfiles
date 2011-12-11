set nocompatible


set diffexpr=MyDiff()
function MyDiff()
  let opt = ''
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  silent execute '!diff -a ' . opt . v:fname_in . ' ' . v:fname_new . ' > ' . v:fname_out
endfunction

set ic
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
set smartindent
set smartcase
set cindent
set cinoptions=>4
set formatoptions=cqro
set textwidth=80
set viminfo='1
set ruler
set showmatch
set wildmenu
set wildmode=list:longest
set laststatus=2
set smarttab
set autowrite
set noswapfile
set nobackup
set nowb
set term=xterm
syntax on
"highlight Normal guibg=grey95
colorscheme elflord
"set gfn=Courier_New:h10:b:cANSI
