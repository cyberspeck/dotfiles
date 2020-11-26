
"  forces Vim to source .vimrc file if it present in working directory
set exrc
" restrict usage of some commands in non-default .vimrc files
set secure

inoremap jk <ESC>

" http://vim.wikia.com/wiki/Indenting_source_code
filetype plugin indent on
syntax on
set encoding=utf-8

noremap <Space> <Nop>
let mapleader = "\<Space>"
let maplocalleader = "ü"


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
nnoremap <leader>n :set relativenumber!<CR>

"  https://advancedweb.hu/2017/09/19/vim-persistent-undo/
if !isdirectory("/tmp/.vim-undo-dir")
    call mkdir("/tmp/.vim-undo-dir", "", 0700)
endif
set undodir=/tmp/.vim-undo-dir
set undofile

"  fix Vim’s horribly broken default regex “handling” by automatically inserting a \v before any string you search for:
nnoremap / /\v
vnoremap / /\v

"  replace word under cursor
nnoremap <leader>r :%s/\<<C-r><C-w>\>//g<Left><Left>


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

" makes Vim show invisible characters with the same characters that TextMate uses:
nnoremap <leader>i :set list!<CR>
set listchars=tab:▸\ ,eol:¬
"
" strip all trailing whitespace in the current file
nnoremap <leader>I :%s/\s\+$//<cr>:let @/=''<CR>
" alterativ: remove unwanted trailing whitespaces in the whole file
" nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" movement by file line instead of screen line:
nnoremap j gj
nnoremap k gk

" get rid of helpt key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" ; does the same as :
nnoremap ; :


" http://vimcasts.org/episodes/accessing-the-system-clipboard-from-vim/
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif
" y and p to/from system clipboard:
" http://vim.wikia.com/wiki/Copy_and_paste_between_sessions_using_a_temporary_file
" vmap <leader>c "+y     " Yank current selection into system clipboard
" nmap <leader>c "+Y     " Yank current line into system clipboard (if nothing is selected)
" nmap <leader>v "+p     " Paste from system clipboard



" https://flore.nz/blog/vim-tips

" der Zeilenumbruch wird mit einem beliebigen Zeichen dargestellt.
" set breakindent
set showbreak=...


" Move visual block
" Jetzt lässt sich der ganze Block im Visual Mode markieren und anschließend mit Joder K verschieben.
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" speichern:
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :q!<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>W :w!<CR>

nnoremap <leader>m :!clear<CR> :!make<CR>
nnoremap <F7> :w<CR> :!g++ -g -Wall % -o
nnoremap <F8> :w<CR> :!g++ -g -Wall % -o %< && ./%< <CR>
" In the above command, "<" after "%" removes extension and dot (foo.c => foo), so "%<" is the file basename.

" http://learnvimscriptthehardway.stevelosh.com/chapters/07.html
nnoremap <leader>e :tabe ~/.vimrc<cr>
nnoremap <leader>E :source ~/.vimrc<CR>
" nnoremap <leader>e :tabe $MYVIMRC<cr>
" nnoremap <leader>E :source $MYVIMRC<CR>

" in normal mode, make Y behave in the same manner as D and C
nmap Y y$

" In visual mode mark lines, then execute following to put // in front of line:
vnoremap <leader>7 :s/^/\/\//<CR>:noh<cr>

" Use Arrow Keys to resize window
noremap <up>    <C-W>+
noremap <down>  <C-W>-
noremap <left>  3<C-W><
noremap <right> 3<C-W>>

" Changing focus between split windows
" http://vimcasts.org/episodes/working-with-windows/
" http://vimcasts.org/blog/2013/01/oil-and-vinegar-split-windows-and-project-drawer/

" Apply YCM FixIt
map <F9> :YcmCompleter FixIt<CR>

colorscheme torte
" change color of syntax highlighting
" https://github.com/Valloric/YouCompleteMe#diagnostic-highlighting-groups
" highlight YcmErrorLine ctermbg=lightblue

"  https://stackoverflow.com/questions/237289/vim-configure-line-number-coloring
:highlight LineNr ctermfg=grey
:highlight CursorLineNr ctermfg=green

" show a colored column at 85 characters
" set colorcolumn=85


" https://www.ostechnix.com/use-spell-check-feature-vim-text-editor/
" https://stackoverflow.com/questions/5040580/is-it-possible-to-toggle-a-vim-option-when-switching-to-insert-mode
" autocmd InsertEnter * setlocal spell spelllang=en_gb
" autocmd InsertLeave * setlocal nospell
nnoremap <leader>s :set spell! spelllang=en_gb<CR>
nnoremap <leader>S :set spell! spelllang=de_at<CR>
nnoremap <leader>a [s
nnoremap <leader>A [S
nnoremap <leader>d ]s
nnoremap <leader>D ]S
nnoremap <leader>z z=1<CR><CR>
nnoremap <leader>Z zg

" AIRLINE
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

" buffers
" https://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/
" http://www.blog.bdauria.com/?p=609
nnoremap <leader><Tab> :bnext<CR>
nnoremap <leader><S-Tab> :bprevious<CR>
nnoremap <leader>b :enew<CR>
nnoremap <leader>B :bdelete<CR>
" TIP:
" open file under cursor in new buffer: gf

" tabs
map 0gt :tablast<CR>
map <leader>t :tabe<CR>
map <leader>T :tabclose<CR>
nnoremap tf :tabf<CR>
" go to last active tab:
if !exists('g:lasttab')
  let g:lasttab = 1
endif
nmap gG :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

let g:tex_flavor = 'latex'
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_compiler_progname = 'nvr'

" https://github.com/KeitaNakamura/tex-conceal.vim 
set conceallevel=0
let g:tex_conceal="abdgms"

" inoremap ´ `
" nnoremap ´ `
" vnoremap ´ `
" easier use parenthesis (for e.g. latex)
imap ö [
imap Ö {
imap ä ]
imap Ä }

" UltiSnips and YCM:
" https://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme

nnoremap <buffer> <F6> :exec '!clear; python' shellescape(@%, 1)<cr>

nnoremap <C-T> :term ++rows=20 <CR>
" https://vim.fandom.com/wiki/Toggle_auto-indenting_for_code_paste
set pastetoggle=<F2>

let g:deoplete#enable_at_startup = 1
" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" https://github.com/gabrielelana/vim-markdown
let g:markdown_enable_mappings = 0
" https://github.com/plasticboy/vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_conceal = 0

" https://github.com/vuciv/vim-bujo
nmap <C-S> <Plug>BujoAddnormal
imap <C-S> <Plug>BujoAddinsert
nmap <C-Q> <Plug>BujoChecknormal
imap <C-Q> <Plug>BujoCheckinsert

silent! helptags ALL
