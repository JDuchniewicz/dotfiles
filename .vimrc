"""" My config 
set number
set pastetoggle=<F3>
set softtabstop=0 expandtab shiftwidth=4 smarttab tabstop=4
filetype plugin indent on
set clipboard=unnamed
let mapleader=" "
set encoding=UTF-8

""" Plugins
call plug#begin('~/.vim/plugged.')
""" Basics
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mbbill/undotree'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
""" Session
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'
""" Nerdtree
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdcommenter'
""" FZF
Plug 'junegunn/fzf.vim'
""" UML
Plug 'scrooloose/vim-slumlord'
Plug 'aklt/plantuml-syntax'
""" Themes
Plug 'altercation/vim-colors-solarized'
Plug 'dracula/vim'
""" C++
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'Shougo/deoplete.nvim'
Plug 'tweekmonster/deoplete-clang2'
Plug 'Shougo/neoinclude.vim'
""" OpenGL
Plug 'tikhomirov/vim-glsl'
""" Python
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'roxma/nvim-yarp'
Plug 'davidhalter/jedi-vim'
""" Rust
Plug 'rust-lang/rust.vim'
Plug 'vim-syntastic/syntastic'
Plug 'majutsushi/tagbar'
Plug 'racer-rust/vim-racer'
"Plug 'w0rp/ale'
""" Tex
Plug 'lervag/vimtex' 
Plug 'xuhdev/vim-latex-live-preview', { 'for' : 'tex' }
"Plug 'supercollider/scvim'
""" VHDL
Plug 'http://git.vhdltool.com/vhdl-tool/syntastic-vhdl-tool'
call plug#end()

"""""""""""
""" Vanilla
""""""""""

""" Buffers
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

""" Persistent undo
set undofile
set undodir=~/.vim/undodir

"""""""""""
""" Plugins
""""""""""

""" Nerdtree
let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


""" Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#executable= '/usr/bin/clang'
"let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
"let g:deoplete#sources#clang#clang_header = '/usr/include/libclang'
" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" use shift tab to backward cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
" closes complete window after completion
autocmd CompleteDone * pclose!


""" ALE # temporarily disabled
"let g:ale_c_clang_options='-std=c17 -Wall'
"let g:ale_c_parse_makefile=1

""" Solarized
set t_Co=16 "removes fucked up issue with transparency"
syntax enable
set background=dark " dark | light "does work in reverse in st XD
"colorscheme solarized 
colorscheme dracula

""" Airline

""" Nasm
let g:asmsyntax = 'nasm'

""" Glsl
autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl

""" VimTex
let g:tex_flavor = 'latex'

""" Custom commands
command! Sudosave w !sudo dd of=%

""" Autocommands
au BufRead,BufNewFile *.asm set filetype=nasm
au BufRead,BufNewFile *.S set filetype=nasm

set autochdir

""" UndoTree
nnoremap <leader>u :UndotreeToggle<cr>

""" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""" Syntastic C
let g:syntastic_c_check_header = 1
let g:syntastic_c_auto_refresh_includes = 1

""" Syntastic VHDL
let g:syntastic_vhdl_checkers = ['vhdltool']
""" TODO: could try autocompletion, but this requires having additional
"language server - language client

""" Rust
let g:rustfmt_autosave = 1

""" Tagbar
""" seems not to work > autoopen < 
autocmd VimEnter * nested :call tagbar#autoopen(1)
nnoremap <silent> <leader>b :TagbarToggle<cr>

""" Rust-Racer
set hidden
let g:racer_insert_paren = 1
let g:racer_experimental_completer = 1
augroup Racer
    autocmd!
    autocmd FileType rust nmap <buffer> gd         <Plug>(rust-def)
    autocmd FileType rust nmap <buffer> gs         <Plug>(rust-def-split)
    autocmd FileType rust nmap <buffer> gx         <Plug>(rust-def-vertical)
    autocmd FileType rust nmap <buffer> gn         <Plug>(rust-def-tab)
    autocmd FileType rust nmap <buffer> <leader>gd <Plug>(rust-doc)
    autocmd FileType rust nmap <buffer> <leader>gD <Plug>(rust-doc-tab)
augroup END

""" FZF shortcuts
nnoremap <silent> <leader>g :Rg<CR>
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>c :Commits<CR>
nnoremap <silent> <leader>v :Buffers<CR>
