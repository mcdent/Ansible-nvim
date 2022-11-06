" lets set the tap stops to something more useful.
" I will use 2 for yaml and 4 for python.
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
"
set relativenumber
" This also shows the actual line number we are on instead of just showing 0.
set nu
set incsearch
" starts scrolling the display when we are 6 lines from top/bottom
set scrolloff=8
" set termguicolors
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" load our plugins.
call plug#begin('~/.vom/plugged')
" first 3 plugins are for telescope.
Plug 'nvim-lua/plenary.nvim'
Plug 'BurntSushi/ripgrep'
Plug 'nvim-telescope/telescope.nvim'
" some colours
Plug 'gruvbox-community/gruvbox'
call plug#end()
" Install the colors - after loading plugin gruvbox
colorscheme gruvbox
" Set our keys for Telescope. Precede with space " "
let mapleader = " "
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
