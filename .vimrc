execute pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim

set nocompatible
set nowrap
set autoindent
set ruler

filetype plugin indent on

set ts=4
set sw=4
"set expandtab
"set smarttab
"set foldmethod=marker

let maplocalleader = ","

syntax enable
if has('gui_running')
	set lines=60
	set columns=100
"	set cb=unnamed
	set guioptions+=T
endif

if has('nvim')
	let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
set background=dark " or light
colorscheme solarized

if has("mouse")
	set mouse=a
endif

set wildmenu
set wildignore+=*.class,*.so,*.swp,node_modules,dist,build,target

if !has('nvim')
    "colorscheme default
    "set guifont=Monospace\ 14
    "set guifont=Menlo\ Regular:h10
endif

"command Class set background=light guifont=Monospace\ 14

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disabling this now that the habit has been formed
"imap <up> <nop>
"imap <down> <nop>
"imap <left> <nop>
"imap <right> <nop>

nnoremap j gj
nnoremap k gk

" Make it easy to clear search results
nnoremap <localleader><Space> :nohls<CR>

" https://github.com/kien/ctrlp.vim
let g:ctrlp_working_path_mode = 0

" enable persistent undo
if v:version >= 703
	" ensure undo directory exists
	if !isdirectory("~/.vimundo")
		call system("mkdir ~/.vimundo")
	endif

	set undodir=~/.vimundo
	set undofile
	set undolevels=1000
	set undoreload=10000
endif

au BufEnter *.clj RainbowParenthesesActivate
au Syntax clojure RainbowParenthesesLoadRound
au Syntax clojure RainbowParenthesesLoadSquare
au Syntax clojure RainbowParenthesesLoadBraces

"SpeedDatingFormat %a %b %d %Y
