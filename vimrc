" source ~/.vim/vimrc

set rtp+=/usr/share/vim/addons
set runtimepath+=$GOROOT/misc/vim

"load pathogen managed plugins
call pathogen#infect()
syntax on
filetype plugin indent on

"Use Vim settings, rather then Vi settings
set nocompatible

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"store lots of :cmdline history
set history=1000

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

set number      "add line numbers
set showbreak=...
set autoindent

if has("gui_running")
  set guifont=Liberation\ Mono\ Bold\ 11
  colorscheme railscasts
endif

" use system clipboard
if has("unnamedplus")
  set clipboard=unnamedplus
elseif has("clipboard")
  set clipboard=unnamed
endif

" default tab width
setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" CSS
" ---
autocmd FileType css setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

" HTML, XHTML, XML
" ----------------
autocmd FileType html,xhtml,xml setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" Java
" ----
autocmd FileType java setlocal shiftwidth=4 tabstop=4 softtabstop=4

" Javascript
" ----------
autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" php support
" -----------
autocmd FileType php setlocal shiftwidth=4 tabstop=4 softtabstop=4

" python support
" --------------
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with

" GO support
autocmd FileType go setlocal shiftwidth=8 tabstop=8 softtabstop=8
autocmd BufWritePre *.go :silent Fmt

" Ruby
" ----------
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" CoffeeScript
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 tabstop=2 softtabstop=2 expandtab foldmethod=indent nofoldenable

" Remove trailing spaces
autocmd BufWritePre * :%s/\s\+$//e

" Copy, cut and paste
nnoremap <C-S-c> "+y
vnoremap <C-S-c> "+y
inoremap <C-S-v> <Esc>1l"+gPgi
nnoremap <C-S-v> "+gP
vnoremap <C-S-v> "+gP

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Mappings to move lines
nnoremap <A-j> :m+<CR>==
nnoremap <A-k> :m-2<CR>==
inoremap <A-j> <Esc>:m+<CR>==gi
inoremap <A-k> <Esc>:m-2<CR>==gi
vnoremap <A-j> :m'>+<CR>gv=gv
vnoremap <A-k> :m-2<CR>gv=gv

" Text indention
nmap <S-Tab> <<
nmap <Tab> >>
vmap <S-Tab> <gv
vmap <Tab> >gv

" NERDTree
silent! nmap <silent> <F9> :NERDTreeToggle<CR>
nnoremap <silent> <C-f> :NERDTreeFind<CR>
let NERDTreeIgnore = ['\.rbc$','\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']

" Dictionary completions
set dictionary+=/usr/share/dict/words

" Ack
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

" Shortcut for saving read-only files
cnoremap sudow w !sudo dd of=%
