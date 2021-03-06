" source ~/.vim/vimrc

"if has('vim_starting')
"   set nocompatible               " Be iMproved
"
"   set runtimepath+=~/.vim/bundle/neobundle.vim/
"endif

"call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
"NeoBundleFetch 'Shougo/neobundle.vim'

"NeoBundle 'scrooloose/nerdtree'
"NeoBundle 'scrooloose/syntastic'
"NeoBundle 'jpo/vim-railscasts-theme'
"NeoBundle 'tpope/vim-endwise'
"NeoBundle 'tpope/vim-rake'
"NeoBundle 'tpope/vim-bundler'
"NeoBundle 'tpope/vim-rails'
"NeoBundle 'tpope/vim-repeat'
"NeoBundle 'tpope/vim-commentary'
"NeoBundle 'tpope/vim-surround'
"NeoBundle 'tpope/vim-ragtag'
"NeoBundle 'ervandew/supertab'

" SnipMate
"NeoBundle 'MarcWeber/vim-addon-mw-utils'
"NeoBundle 'tomtom/tlib_vim'
"NeoBundle 'garbas/vim-snipmate'
"NeoBundle 'honza/vim-snippets'

"NeoBundle 'junegunn/vim-easy-align'
"NeoBundle 'gcmt/wildfire.vim'
"NeoBundle 'Shougo/vimproc', {
"      \ 'build' : {
"      \     'windows' : 'make -f make_mingw32.mak',
"      \     'cygwin' : 'make -f make_cygwin.mak',
"      \     'mac' : 'make -f make_mac.mak',
"      \     'unix' : 'make -f make_unix.mak',
"      \    },
"      \ }
"NeoBundle 'Shougo/unite.vim'
"NeoBundle 'airblade/vim-gitgutter'
"NeoBundle 'bling/vim-airline'

syntax on
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
"NeoBundleCheck

set hlsearch
set number      "add line numbers
set showbreak=...

" TODO
"if has("gui_running")
"  set guifont=Liberation\ Mono\ Bold\ 11
"  colorscheme railscasts
"endif

" TODO
" use system clipboard
"if has("unnamedplus")
"  set clipboard=unnamedplus
"elseif has("clipboard")
"  set clipboard=unnamed
"endif

" default tab width
setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" GO support
autocmd FileType go setlocal shiftwidth=8 tabstop=8 softtabstop=8
autocmd FileType go autocmd BufWritePre <buffer> Fmt
autocmd FileType go compiler go

" Remove trailing spaces
autocmd BufWritePre * :%s/\s\+$//e

au FileType c nnoremap <F5> :w <bar> exec '!cc -std=c99 -Wall '.shellescape('%').' -o '.shellescape('%:r.out').' && ./'.shellescape('%:r.out')<CR>
au FileType cpp nnoremap <F5> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r.out').' && ./'.shellescape('%:r.out')<CR>
au FileType rust nnoremap <F4> :w <bar> exec '!rustc -L . '.shellescape('%').' -o '.shellescape('%:r.out')<CR>
au FileType rust nnoremap <F5> :w <bar> exec '!rustc -L . '.shellescape('%').' -o '.shellescape('%:r.out').' && ./'.shellescape('%:r.out')<CR>
au FileType go nnoremap <F5> :w <bar> exec '!go run '.shellescape('%')<CR>

" Copy, cut and paste
nnoremap <C-S-c> "+y
vnoremap <C-S-c> "+y
inoremap <C-S-v> <Esc>1l"+gPgi
nnoremap <C-S-v> "+gP
vnoremap <C-S-v> "+gP

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" TODO
" Mappings to move lines
"nnoremap <A-j> :m+<CR>==
"nnoremap <A-k> :m-2<CR>==
"inoremap <A-j> <Esc>:m+<CR>==gi
"inoremap <A-k> <Esc>:m-2<CR>==gi
"vnoremap <A-j> :m'>+<CR>gv=gv
"vnoremap <A-k> :m-2<CR>gv=gv

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

" TODO
" Ack
"let g:ackprg="ack-grep -H --nocolor --nogroup --column"

" Shortcut for saving read-only files
cnoremap sudow w !sudo dd of=%

" ragtag
" inoremap <M-o>       <Esc>o
" inoremap <C-j>       <Down>
" let g:ragtag_global_maps = 1

" Start interactive EasyAlign in visual mode
"vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign with a Vim movement
"nmap <Leader>a <Plug>(EasyAlign)

" Unite
" call unite#filters#matcher_default#use(['matcher_fuzzy'])
" nnoremap <leader>t :<C-u>Unite -buffer-name=files -start-insert buffer file_rec/async:!<cr>
" nnoremap <leader>f :<C-u>Unite grep:.<cr>
" nnoremap <space>/ :Unite grep:.<cr>
" nnoremap <space>s :Unite -quick-match buffer<cr>
" let g:unite_enable_start_insert = 1
" let g:unite_split_rule = "botright"
" let g:unite_force_overwrite_statusline = 0
" let g:unite_winheight = 10
" let g:unite_candidate_icon="▷"

" airline
set laststatus=2
set noshowmode
let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1
