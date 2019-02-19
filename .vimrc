"""" My config 
set number
set pastetoggle=<F3>
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set clipboard=unnamed
let mapleader=" "
set encoding=UTF-8

""" Plugins
call plug#begin('~/.vim/plugged.')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'altercation/vim-colors-solarized'
Plug 'dracula/vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'airblade/vim-gitgutter'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'valloric/youcompleteme'
Plug 'w0rp/ale'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lervag/vimtex' 
Plug 'mbbill/undotree'
Plug 'ryanoasis/vim-devicons'
call plug#end()

""" Nerdtree
let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""" YCM
let g:ycm_server_python_interpreter='/usr/bin/python3'
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged./youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

""" Solarized
set t_Co=16 "removes fucked up issue with transparency"
syntax enable
set background=dark " dark | light "does work in reverse in st XD
"colorscheme solarized 
colorscheme dracula

""" Airline

""" Nasm
set ft=nasm

""" Indentation
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

""" Custom commands
command Sudosave w !sudo dd of=%

""" Autocommands
au BufRead,BufNewFile *.asm set filetype=nasm
au BufRead,BufNewFile *.S set filetype=nasm

set autochdir
