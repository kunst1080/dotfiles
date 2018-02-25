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

" Dein
if &compatible
  set nocompatible
endif
set runtimepath+=~/.tmp/vim/dein.vim

if dein#load_state(expand('~/.tmp/vim'))
  call dein#begin(expand('~/.tmp/vim'))

  call dein#add(expand('~/.tmp/vim/dein.git'))
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  call dein#add('cespare/vim-toml')

  call dein#end()
  call dein#save_state()
endif

syntax on
colorscheme evening
