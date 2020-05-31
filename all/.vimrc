set number
set ruler

set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=indent,eol,start

set undodir=~/.vim/undo
set backupdir=~/.vim/tmp

syntax on
"colorscheme evening

let _curfile=expand("%:r")
if _curfile == 'Makefile'
  set noexpandtab
endif
