" Simple stuff
" set paste " - disabling because auto-pairs doesn't work, weird.. 
set background=dark
if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also https://sunaku.github.io/vim-256color-bce.html
    set t_ut=
endif
set enc=utf-8
syntax on
set tabstop=4
set shiftwidth=4
"set number relativenumber
"colorscheme meadow
set backspace=2

" Recursively search for files in directors with the :find command
set path+=**

" Mappings

map \p i(<ESC>ea)<ESC>
map // ^i--<ESC>

" Turn back up off
set nobackup
set nowb
set noswapfile

" Create the `tags` files
command! Mktags !ctags -R .

" -> ^] to jump to tag
" -> ^t to jump back to stack
"
filetype plugin indent on

" Rust specifics
let g:rustfmt_autosave = 1
let maplocalleader="\<space>"

" Adds filetype indentation for webdev
autocmd filetype html setlocal tabstop=2 shiftwidth=2

" Python conf
"
" Disabling auto comments when entering
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd filetype lua setlocal noexpandtab tabstop=3 shiftwidth=3
autocmd filetype go setlocal expandtab tabstop=4 shiftwidth=4
let g:go_highlight_trailing_whitespace_error = 0

autocmd filetype haskell setlocal expandtab 
autocmd filetype css setlocal expandtab softtabstop=2 shiftwidth=2 
autocmd filetype vue setlocal expandtab softtabstop=2 shiftwidth=2 
autocmd filetype javascript setlocal expandtab softtabstop=2 shiftwidth=2
autocmd filetype html setlocal expandtab softtabstop=2 shiftwidth=2
autocmd filetype python setlocal expandtab softtabstop=4 shiftwidth=4
autocmd filetype elm setlocal expandtab softtabstop=4 shiftwidth=4
autocmd filetype moon setlocal autoindent expandtab tabstop=3 softtabstop=3 shiftwidth=3
autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl


:map <F5> /\/\/<CR>xxi/*<Esc>A*/<Esc>

" For omnicomplete to close preview scratchpad after insert
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

let g:AutoPairsShortcutToggle = '<C-a>'
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'jiangmiao/auto-pairs'
Plug 'elmcast/elm-vim'
Plug 'tpope/vim-surround'
Plug 'morhetz/gruvbox'
Plug 'tomlion/vim-solidity'
Plug 'ziglang/zig.vim'
Plug 'calviken/vim-gdscript3'
Plug 'leafo/moonscript-vim'
Plug 'elixir-editors/vim-elixir'
Plug 'bfrg/vim-cpp-modern'
Plug 'kchmck/vim-coffee-script'
Plug 'neovimhaskell/haskell-vim'
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'dag/vim-fish'
Plug 'scrooloose/nerdtree'
Plug 'pangloss/vim-javascript'
" Initialize plugin system
call plug#end()

