" Simple stuff
syntax on
set tabstop=8
set shiftwidth=8
set number
set noautoindent
set backspace=2

" Recursively search for files in directors with the :find command
set path+=**

" Create the `tags` files
command! Mktags !ctags -R .

" -> ^] to jump to tag
" -> ^t to jump back to stack

" Adds filetype indentation for webdev
autocmd filetype html setlocal tabstop=2 shiftwidth=2
autocmd filetype css setlocal tabstop=2 shiftwidth=2
autocmd filetype javascript setlocal tabstop=4 shiftwidth=4

