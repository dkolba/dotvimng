""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PATHOGEN
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off
execute pathogen#infect()
call pathogen#helptags()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SYNTASTIC
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_error_symbol = '✗✗'
let g:syntastic_style_error_symbol = '✠✠'
let g:syntastic_warning_symbol = '∆∆'
let g:syntastic_style_warning_symbol = '≈≈'
" Use eslint
let g:syntastic_javascript_checkers = ['eslint']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AIRLINE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"get rid of the default mode indicator because we use airline
set noshowmode
"enable airline's smarter tab line extension
let g:airline#extensions#tabline#enabled = 1
"enable symbols of patched font
let g:airline_powerline_fonts = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FILETYPES 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Recognise file by extension
autocmd BufEnter *.json set filetype=javascript
autocmd BufEnter *.dust set filetype=html


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SNIPMATE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure snipmate dir
let g:snippets_dir="~/.vim/snippets"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISC. 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
