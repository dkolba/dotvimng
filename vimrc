""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PATHOGEN
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off
execute pathogen#infect()
call pathogen#helptags()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" KEY MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Faster shortcut for commenting. Requires T-Comment plugin
map ,c <c-_><c-_>
let leader = ','
let g:leader = ','
let mapleader = ','
let g:mapleader = ','
let localleader = '\'
let g:localleader = '\'


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
" EASYMOTION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Require tpope/vim-repeat to enable dot repeat support
" Jump to anywhere with only `s{char}{target}`
" `s<CR>` repeat last find motion.
nmap s <Plug>(easymotion-s)
" Bidirectional & within line 't' motion
omap t <Plug>(easymotion-bd-tl)
" Use uppercase target labels and type as a lower case
let g:EasyMotion_use_upper = 1
 " type `l` and match `l`&`L`
let g:EasyMotion_smartcase = 1
" Smartsign (type `3` and match `3`&`#`)
let g:EasyMotion_use_smartsign_us = 1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
" keep cursor colum when JK motion
let g:EasyMotion_startofline = 0 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISC. 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
