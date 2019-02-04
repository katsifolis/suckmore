" Simple stuff
syntax on
color dracula
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set number relativenumber
set noautoindent
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

" Adds filetype indentation for webdev
autocmd filetype html setlocal tabstop=2 shiftwidth=2

" Python conf
"
" Disabling auto comments when entering
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


autocmd filetype lua setlocal tabstop=4 shiftwidth=4
autocmd filetype go setlocal tabstop=4 shiftwidth=4

let g:go_highlight_trailing_whitespace_error = 0

autocmd filetype css setlocal expandtab softtabstop=2 shiftwidth=2 
autocmd filetype vue setlocal expandtab softtabstop=2 shiftwidth=2 
autocmd filetype javascript setlocal expandtab softtabstop=2 shiftwidth=2
autocmd filetype html setlocal expandtab softtabstop=2 shiftwidth=2
autocmd filetype python setlocal expandtab softtabstop=4 shiftwidth=4

