""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SHORTCUTS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" %        = (on parentheses) search for matching parenthesis
" <c-n>    = Next menu item
" <c-p>    = Previous menu item
" s      = Activate EasyMotion
" jj       = Exit normal mode
" ,c       = Comment/uncomment line
" ,v       = Vertical split window
" <space>  = Map the spacebar to colon
" ,<tab>   = Code completion
" <C-Up>   = Bubble line up
" <C-Down> = Bubble line down
" <ESC>    = Matches will no longer be highlighted
" <C-h>    = Move to left window
" <C-j>    = Move to lower window
" <C-k>    = Move to upper window
" <C-l>    = Move to right window
" cst<p>   = Change surrounding tag to <p>
" %s/X/Y/g = Find X and replace it with Y (globally)
" %s/\s*\(\w*@\w*.\w*\)/<a href=\"mailto:\1">\1<\/a>
" va"      = select all text betweet (and including) quotes
" vi"      = select all text betweet quotes
" vat      = select all text betweet (and including) tags
" vit      = select all text betwwet tags
" *        = find all occurrences of the word under the curser
" <tab>    = Expand snipMate snippets (and clear search)
" df,      = (reverse dF,) delete till ',' on the current line.
" I        = go to beginning of the line as insert mode.
" $        = in command mode, go to end of the line.
" gg       = go to beginning of the file
" G        = go to end of the file


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

"Open Ctrl-P without typing ctrl + p :o)
nnoremap <Leader>o :CtrlP<CR>

" Saves time; maps the spacebar to colon
nmap <space> :

" Keep curson in place when using J to join two lines
nnoremap J mzJ`z

" change rows not lines which is useful on wrapped lines
nnoremap j gj
nnoremap k gk

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Toggle spell checking on and off with `,s`
nmap <silent> <leader>s :set spell!<CR>

" In addition to <esc>, jj will exit to normal mode.
inoremap jj <ESC>

"Map code completion to , + tab
imap ,<tab> <C-x><C-o>

"Bubble single lines (kicks butt) http://vimcasts.org/episodes/bubbling-text/
nmap <C-Up> ddkP
nmap <C-Down> ddp
"This makes bubbling work on Mac OSX (still have to edit terminal.app settings)
nmap <Esc>[A ddkP
nmap <Esc>[B ddp


"Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

" Press ESC and matches will no longer be highlighted
nmap CTRL-v Shift-ESC :nohls CTRL-v ENTER

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Switch between buffers
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>

" Navigate between windows
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" https://technotales.wordpress.com/2010/04/29/vim-splits-a-guide-to-doing-exactly-what-you-want/
" split window
nmap <leader>swh :topleft  vnew<CR>
nmap <leader>swl :botright vnew<CR>
nmap <leader>swk :topleft  new<CR>
nmap <leader>swj :botright new<CR>
" split buffer
nmap <leader>sh :leftabove  vnew<CR>
nmap <leader>sl :rightbelow vnew<CR>
nmap <leader>sk :leftabove  new<CR>
nmap <leader>sj :rightbelow new<CR>

" Clear search results when hitting tab
nnoremap <silent> <Tab> :nohlsearch<Bar>:echo<CR>

"Hard-wrap paragraphs of text
nnoremap <leader>q gqip

"Map code completion to , + tab
imap ,<tab> <C-x><C-o>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SYNTASTIC
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_error_symbol = '✗✗'
let g:syntastic_style_error_symbol = '✠✠'
let g:syntastic_warning_symbol = '∆∆'
let g:syntastic_style_warning_symbol = '≈≈'

" Use eslint
let g:syntastic_javascript_checkers = ['eslint']
" Don't lint on :wq
let g:syntastic_check_on_wq = 0


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AIRLINE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"get rid of the default mode indicator because we use airline
set noshowmode

"enable airline's smarter tab line extension
let g:airline#extensions#tabline#enabled = 1

"enable symbols of patched font
" let g:airline_powerline_fonts = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FILETYPES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Recognise file by extension
autocmd BufEnter *.json set filetype=javascript
autocmd BufEnter *.dust set filetype=html

" Recognize file types / set indent mode
filetype plugin indent on
filetype plugin on


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
" TABS VS SPACES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spaces instead of tabs
set expandtab

" 2 spaces for each tab
set tabstop=2
set softtabstop=2

" 2 spaces for indention
set shiftwidth=2

set smarttab

" Use The Silver Searcher if available
if executable('ag')
  " Use ag in CtrlP
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

  " Skip caching since ag is so fast
  let g:ctrlp_use_caching = 0
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" STYLING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax highlighting
"syntax enable
syntax on

" Color Scheme
set t_Co=256
colorscheme distinguished

"if match($TERM, "screen")!=-1
  "set term=xterm
"endif

"set relativenumber
if exists('+relativenumber')
  set relativenumber
end

" Show Line numbers
set number

" Visual line marking 80 characters (vim 7.3)
if v:version >= 703
  set colorcolumn=80
  highlight ColorColumn ctermbg=darkred guibg=darkred
endif

" Display whitespace
set list

" Highlight active line
set cursorline

"hi CursorLine cterm=none

" Invisible characters
autocmd BufEnter * set listchars=tab:▸\ ,eol:¬,trail:-

set wildmenu
set whichwrap=b,s,h,l,<,>,~,[,] "everything wraps
set undolevels=5000

" Use the below highlight group when displaying bad whitespace is desired.
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DISPLAY
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ruler
set number
set showcmd
set laststatus=2
set winminheight=0
set winminwidth=0
set winheight=10
set display+=lastline

" No automatic line breaks
set textwidth=80
"set columns=90

" Automatic line breaks, ten characters from the right
"set wrapmargin=10
"set numberwidth=5

"Opens a vertical split and switches over (\v)
nnoremap <leader>v <C-w>v<C-w>l

"Split windows below the current window.
set splitbelow


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SEARCH
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" highlight search results
set hlsearch

" ignore case in searches ... (\c\C override)
set ignorecase

" ... unless there are caps in the search
set smartcase

" do incremental searching
set incsearch

set infercase
set showmatch
set diffopt=filler,iwhite
nnoremap / /\v
vnoremap / /\v
set gdefault


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ABBREVIATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iab lorem Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SPELLING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iab teh the
iab Teh The
iab cocouch couch
iab coucch couch
iab cocuch couch
iab cococh couch
iab cocuhc couch
iab cocouh couch
iab cocuoh couch
iab cocuh couch
iab cocch couch
iab cocoh couch
iab Cocouch Couch
iab Coucch Couch
iab Cocuch Couch
iab Cococh Couch
iab Cocuhc Couch
iab Cocouh Couch
iab Cocuoh Couch
iab Cocuh Couch
iab Cocch Couch
iab Cocoh Couch


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISC.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Be IMproved
set nocompatible

" Better % command
runtime macros/matchit.vim

" Switch between buffers without saving
set hidden

set clipboard=unnamed

" make backspace work like most other apps
"set backspace=2
set backspace=indent,eol,start

" Allow mouse usage in terminal vim
set mouse=a

" Always show status line
set laststatus=2

" make auto completion on command line work like in shell
set wildmode=longest,list

" Scroll cursor offset
set scrolloff=3

"change terminal's title and revert it on exit
set title
let &titleold=""

" Tell vim to remember certain things when we exit
" "  '10  :  marks will be remembered for up to 10 previously edited files
" "  "100 :  will save up to 100 lines for each register
" "  :20  :  up to 20 lines of command-line history will be remembered
" "  %    :  saves and restores the buffer list
" "  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

" remember cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Automatically safe files when switchin between them / leaving vim
"set autowriteall
"autocmd FocusLost * silent! :wa
"autocmd TabLeave * silent! :wa

" Store temporary files in a central spot
set undodir=~/.vim/.vim-tmp//,/var/tmp//,/tmp//,.

" Do not create swap files, we're using git after all
" set nobackup
" set nowritebackup
" set noswapfile

" Enable vim to remember undo chains between sessions (vim 7.3)
if v:version >= 703
  set undofile
endif

"set completeopt=menuone,longest,preview

" Ignore certain things
set wildignore+=.git,*/node_modules/*,*/deps/build/*,*/stack/*,*/deps/go/*,*/deps/node/*,*/_site/*

"shorten pause when leaving insert mode
set ttimeoutlen=50

set autoindent
set preserveindent
set nosmartindent
set wrap
set formatoptions=lcroqwan2vb1
set matchtime=5
set showbreak=…
set encoding=utf-8 fileencodings=.
set showfulltag

"Fix css/js code completion in html files (set before rainbow parens!)
set ft=html.css.javascript

if has("autocmd")
  if version >= 700
    autocmd FileType python set omnifunc=pythoncomplete#Complete
    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
    autocmd FileType js setomnifunc=javascriptcomplete#CompleteJS
  endif
endif

set nofoldenable

" Treat underscores as word seperators
set iskeyword-=_

" Activate JSX highlighting also in JSX files
let g:jsx_ext_required = 0

let g:ctrlp_use_caching = 0
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor

  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
  let g:ctrlp_prompt_mappings = {
        \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
        \ }
endif
