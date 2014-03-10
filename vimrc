" source ~/.vim/vimrc

if has('vim_starting')
   set nocompatible               " Be iMproved

   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-rake'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-ragtag'
NeoBundle 'ervandew/supertab'

" SnipMate
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'honza/vim-snippets'

NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'gcmt/wildfire.vim'
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
NeoBundle 'Shougo/unite.vim'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'bling/vim-airline'

syntax on
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

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
"let g:ackprg="ack-grep -H --nocolor --nogroup --column"

" Shortcut for saving read-only files
cnoremap sudow w !sudo dd of=%

" ragtag
inoremap <M-o>       <Esc>o
inoremap <C-j>       <Down>
let g:ragtag_global_maps = 1

" Start interactive EasyAlign in visual mode
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign with a Vim movement
nmap <Leader>a <Plug>(EasyAlign)

" Unite
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>t :<C-u>Unite -buffer-name=files -start-insert buffer file_rec/async:!<cr>
nnoremap <leader>f :<C-u>Unite grep:.<cr>
nnoremap <space>/ :Unite grep:.<cr>
nnoremap <space>s :Unite -quick-match buffer<cr>
let g:unite_enable_start_insert = 1
let g:unite_split_rule = "botright"
let g:unite_force_overwrite_statusline = 0
let g:unite_winheight = 10
let g:unite_candidate_icon="▷"

" airline
set laststatus=2
set noshowmode
let g:airline_powerline_fonts = 1
