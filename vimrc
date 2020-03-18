set nocompatible
set noswapfile
set encoding=utf-8

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'https://github.com/vivien/vim-linux-coding-style.git'
Plugin 'morhetz/gruvbox'
Plugin 'Valloric/YouCompleteMe'
Plugin 'https://github.com/kien/ctrlp.vim.git'
Plugin 'https://github.com/rking/ag.vim.git'
Plugin 'https://github.com/xavierd/clang_complete'
Plugin 'https://github.com/907th/vim-auto-save'

call vundle#end()
filetype plugin indent on
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable
set tabstop=8
set number
filetype indent on
set autoindent
set expandtab
colorscheme gruvbox

"Match the brackets"
inoremap { {<CR>}<Esc>ko
inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
"Dark mode for gruvbox"
set bg=dark

"Open NERDtree automatically when vim starts up"
autocmd vimenter * NERDTree

"Close NERDtree if is the only window left"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:ycm_min_num_of_chars_for_completion = 2
"Path to directory where library can be found"
let g:clang_library_path='/usr/lib/llvm-3.8/lib'
let g:ycm_clangd_binary_path = "~/.vim"
