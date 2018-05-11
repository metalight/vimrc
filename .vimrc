" from defaults
"set nocompatible  "this line boinks konsole, maybe set somewhere else..
set backspace=indent,eol,start
set history=200
set ruler
set showcmd
set wildmenu
set ttimeout
set ttimeoutlen=100
set display=truncate
if has('reltime')
	set incsearch
endif
set nrformats-=octal
map Q gq
inoremap <C-U> <C-G>u<C-U>
syntax on
let c_comment_strings=1
filetype plugin indent on
autocmd BufReadPost *
	\ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
	\ |   exe "normal! g`\""
	\ | endif

" from examples
set backup
set undofile
set hlsearch
set autoindent
if has('syntax') && has('eval')
	packadd matchit
endif

" custom
let &t_SI = "\<Esc>]50;CursorShape=1;BlinkingCursorEnabled=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2;BlinkingCursorEnabled=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0;BlinkingCursorEnabled=0\x7"
"let &t_SI = "\<Esc>[5 q"
"let &t_SR = "\<Esc>[3 q"
"let &t_EI = "\<Esc>[2 q"
set scrolloff=1
set mouse=a
map <F7> :up<CR>:make %:r<CR><CR>
imap <F7> <ESC><F7>
set omnifunc=syntaxcomplete#Complete
set wildmode=longest
"set nowildignorecase
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"set pumheight=21
filetype plugin on
set tags+=/fast/ctags
set completeopt=longest,preview
function! CleverTab()
	if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
		return "\<Tab>"
	else
		return "\<C-X>\<C-O>"
	endif
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>
nnoremap / :noh<CR>/
