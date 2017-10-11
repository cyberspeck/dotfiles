
"  forces Vim to source .vimrc file if it present in working directory
set exrc
" restrict usage of some commands in non-default .vimrc files
set secure

inoremap jk <ESC>

filetype plugin indent on
syntax on
set encoding=utf-8

noremap <Space> <Nop>
let mapleader = "\<Space>"


"  http://www.alexeyshmalko.com/2014/youcompleteme-ultimate-autocomplete-plugin-for-vim/
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"


" http://stevelosh.com/blog/2010/09/coming-home-to-vim/

" gets rid of all the crap that Vim does to be vi compatible:
set nocompatible

" I like all tabs to expand to four spaces:
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab


set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

"  https://jeffkreeftmeijer.com/vim-number/
set relativenumber
set number
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
set undofile

"  https://stackoverflow.com/questions/237289/vim-configure-line-number-coloring
:highlight LineNr ctermfg=grey
:highlight CursorLineNr ctermfg=green

"  fix Vim’s horribly broken default regex “handling” by automatically inserting a \v before any string you search for:
nnoremap / /\v
vnoremap / /\v

"  If you search for an all-lowercase string your search will be case-insensitive, but if one or more characters is uppercase the search will be case-sensitive:
set ignorecase
set smartcase

" work together to highlight search results (as you type)
set incsearch
set showmatch
set hlsearch

" gets rid of the distracting highlighting once I’ve found what I’m looking for.
nnoremap <leader>, :noh<cr>

" make the tab key match bracket pairs
nnoremap <tab> %
vnoremap <tab> %

" handle long lines correctly:
" See :help fo-table and the Vimcasts on soft wrapping and hard wrapping
set wrap
set textwidth=79
set formatoptions=qrn1
" show a colored column at 85 characters
set colorcolumn=85

" makes Vim show invisible characters with the same characters that TextMate uses:
set list
set listchars=tab:▸\ ,eol:¬

" movement by file line instead of screen line:
nnoremap j gj
nnoremap k gk

" get rid of helpt key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" ; does the same as :
nnoremap ; :

" save when focus is lost
au FocusLost * :wa

" strip all trailing whitespace in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" alterativ: remove unwanted trailing whitespaces in the whole file
" nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

"reselect the text that was just pasted so I can perform commands (like indentation) on it
nnoremap <leader>v V`]


" https://flore.nz/blog/vim-tips

" der Zeilenumbruch wird mit einem beliebigen Zeichen dargestellt.
set breakindent
set showbreak=...


" Move visual block
" Jetzt lässt sich der ganze Block im Visual Mode markieren und anschließend mit Joder K verschieben.
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" speichern:
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>n :set relativenumber!<CR>
nnoremap <F7> :w<CR> :!g++ -g -Wall % -o
nnoremap <F8> :w<CR> :!g++ -g -Wall % -o %< && ./%< <CR>
" In the above command, "<" after "%" removes extension and dot (foo.c => foo), so "%<" is the file basename.
nnoremap <leader>e :!vim ~/.vimrc<CR>
nnoremap <leader>E :source ~/.vimrc<CR>

" Use Arrow Keys to resize window
noremap <up>    <C-W>+
noremap <down>  <C-W>-
noremap <left>  3<C-W><
noremap <right> 3<C-W>>
