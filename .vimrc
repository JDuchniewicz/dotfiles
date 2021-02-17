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
Plug 'tpope/vim-surround'
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
""" CoC (all completion sources have to be installed manually on the system)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" coc-python
" coc-rust-analyzer
" coc-markdownlint
""" C++
Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'Shougo/deoplete.nvim'
"Plug 'Shougo/deoplete-clangx'
""Plug 'tweekmonster/deoplete-clang2' " 'This seems to be broken' ~Source Hunter
Plug 'Shougo/neoinclude.vim'
"Plug 'xavierd/clang_complete'
""" OpenGL
Plug 'tikhomirov/vim-glsl'
""" Python
"Plug 'roxma/vim-hug-neovim-rpc'
"Plug 'roxma/nvim-yarp'
"Plug 'davidhalter/jedi-vim'
"Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'vim-python/python-syntax'
""" Rust
Plug 'rust-lang/rust.vim'
"Plug 'vim-syntastic/syntastic'
Plug 'majutsushi/tagbar'
"Plug 'racer-rust/vim-racer'
Plug 'cespare/vim-toml'
""" Tex
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for' : 'tex' }
"Plug 'supercollider/scvim'
""" VHDL
"Plug 'http://git.vhdltool.com/vhdl-tool/syntastic-vhdl-tool'
""" Blogging
Plug 'https://github.com/gabrielelana/vim-markdown'
"Plug 'nicwest/vim-workman'
call plug#end()

"""""""""""
""" Vanilla
""""""""""
""""""""""
""" Common
""""""""""
""" Persistent undo
set undofile
set undodir=~/.vim/undodir

""" Folding
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
set foldcolumn=2

""" Whitespace (highlight + remove on save)
match ErrorMsg '\s\+$'
autocmd BufWritePre * :%s/\s\+$//e
""""""""""
""" QWERTY
""""""""""
""" Buffers
" hidden, otherwise errors that buffer is not saved on switching them
"set hidden
"nnoremap <silent> [b :bprevious<CR>
"nnoremap <silent> ]b :bnext<CR>
"nnoremap <silent> [B :bfirst<CR>
"nnoremap <silent> ]B :blast<CR>

""" Visual mode
"vnoremap . :normal.<CR>
"vnoremap J :m '>+1<CR>gv=gv
"vnoremap K :m '<-2<CR>gv=gv

""" Shortcuts (looks like conflicts some bindings) FIX THIS
"vmap <A-y> "+y
"vmap <A-d> "+d
"vmap <A-p> "+p
"vmap <A-P> "+P
"vmap <A-p> "+p
"vmap <A-P> "+P

""""""""""
""" Workman
""""""""""
""" Buffers
" hidden, otherwise errors that buffer is not saved on switching them
set hidden
nnoremap <silent> [v :bprevious<CR>
nnoremap <silent> ]v :bnext<CR>
nnoremap <silent> [V :bfirst<CR>
nnoremap <silent> ]V :blast<CR>
"" TODO: add eventignore for bufdo (loses syntax highlight)

""" Visual mode (Workman)
vnoremap . :normal.<CR>
vnoremap N :m '>+1<CR>gv=gv
vnoremap E :m '<-2<CR>gv=gv

""" Shortcuts (looks like conflicts some bindings) FIX THIS
vmap <A-j> "+y
vmap <A-h> "+d
vmap <A-p> "+p
vmap <A-P> "+P


"""""""""""
""" Plugins
""""""""""

""" Workman
" Map to Alt-yneo instead of hjkl
nnoremap y h
nnoremap n j
nnoremap e k
nnoremap o l

vnoremap y h
vnoremap n j
vnoremap e k
vnoremap o l

""" Nerdtree
let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


""" Deoplete disabled since using coc
"let g:deoplete#enable_at_startup = 1
"set completeopt+=noselect
"call deoplete#custom#option('omni_patterns', {
"\ 'c': ['[^. *\t]\%(\.\|->\)\w*'],
"\ 'cpp': ['[^. *\t]\%(\.\|->\)\w*', '[a-zA-Z_]\w*::'],
"\})
""let g:deoplete#sources#clang#executable= '/usr/bin/clang'
""let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
""let g:deoplete#sources#clang#clang_header = '/usr/include/libclang'
"" use tab to forward cycle
"inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
"" use shift tab to backward cycle
"inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
"" closes complete window after completion
"autocmd CompleteDone * pclose!

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

"""" Syntastic disabled, because coc replaces it
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"
"""" Syntastic C
"let g:syntastic_c_check_header = 1
"let g:syntastic_c_auto_refresh_includes = 1
"
"""" Syntastic VHDL
"let g:syntastic_vhdl_checkers = ['vhdltool']
"""" TODO: could try autocompletion, but this requires having additional
""language server - language client

""" Python
let g:python_highlight_all = 1

""" Rust
let g:rustfmt_autosave = 1

""" Tagbar
""" seems not to autoopen with syntastic windows
autocmd VimEnter * nested :call tagbar#autoopen(1)
"nnoremap <silent> <leader>b :TagbarToggle<cr>
""" Workman
nnoremap <silent> <leader>v :TagbarToggle<cr>

"""" Rust-Racer
"let g:racer_insert_paren = 1
"let g:racer_experimental_completer = 1
"augroup Racer
"    autocmd!
"    autocmd FileType rust nmap <buffer> gd         <Plug>(rust-def)
"    autocmd FileType rust nmap <buffer> gs         <Plug>(rust-def-split)
"    autocmd FileType rust nmap <buffer> gx         <Plug>(rust-def-vertical)
"    autocmd FileType rust nmap <buffer> gn         <Plug>(rust-def-tab)
"    autocmd FileType rust nmap <buffer> <leader>gd <Plug>(rust-doc)
"    autocmd FileType rust nmap <buffer> <leader>gD <Plug>(rust-doc-tab)
"augroup END

""" FZF shortcuts
"nnoremap <silent> <leader>g :Rg<CR>
"nnoremap <silent> <leader>f :Files<CR>
"nnoremap <silent> <leader>c :Commits<CR>
"nnoremap <silent> <leader>v :Buffers<CR>
""" FZF shortcuts (Workman)
nnoremap <silent> <leader>g :Rg<CR>
nnoremap <silent> <leader>t :Files<CR>
nnoremap <silent> <leader>m :Commits<CR>
nnoremap <silent> <leader>c :Buffers<CR>

let g:fzf_layout = { 'down' : '40%' } " Once highlighting works, can try out the window again

""" CoC settings
set nobackup
set nowritebackup "" By this I lose backup on power fail etc
"set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=number

" Tab - STab completion cycling
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" <CR> to complete completion, <C-g>u break undo chain here?
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos TODO: in conflict with rust!
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Scroll documentation in pop-up
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
