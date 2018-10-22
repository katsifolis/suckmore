" Simple stuff
syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set number
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

autocmd filetype lua setlocal tabstop=4 shiftwidth=4
autocmd filetype css setlocal tabstop=2 shiftwidth=2
autocmd filetype javascript setlocal tabstop=4 shiftwidth=4

