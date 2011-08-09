" source ~/.vim/vimrc

"load pathogen managed plugins
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

"Use Vim settings, rather then Vi settings
set nocompatible

syntax enable
if has("gui_running")
  set guifont=Liberation\ Mono\ Bold\ 11
  colorscheme railscasts
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

" Remove trailing spaces
autocmd BufWritePre * :%s/\s\+$//e

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
let NERDTreeIgnore = ['\.rbc$']

" Dictionary completions
set dictionary+=/usr/share/dict/words
