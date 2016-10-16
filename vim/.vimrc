"plugin start https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

"nerd tree"
Plug 'scrooloose/nerdtree' " I need my nerdtree!

"control-p navigation"
Plug 'ctrlpvim/ctrlp.vim'

"supertab autocomplete
Plug 'ervandew/supertab'

"control p
Plug 'ctrlpvim/ctrlp.vim'

" vim-javascript is a dependency of vim-jsx, so load first
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': 'javascript.jsx' }

"coffescript
Plug 'kchmck/vim-coffee-script'

" auto-complete plugins
"Plug 'MarcWeber/vim-addon-mw-utils' "snipmate dep
"Plug 'tomtom/tlib_vim' "snipmate dep
"Plug 'garbas/vim-snipmate'

" Add plugins to &runtimepath
call plug#end()


" Set default tab style
set tabstop=2
set shiftwidth=2
set expandtab

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']

" Nerdtree stuff
" Fix weird arrows in some terminals
" let g:NERDTreeDirArrows=0
 nmap <C-D> :NERDTreeToggle<CR>

 " Disable swap files, they suck
   set nobackup      
   set nowritebackup 
   set noswapfile
 

 " Navigate window splits easily
   nnoremap <silent> <C-Right> <c-w>l
   nnoremap <silent> <C-Left> <c-w>h
   nnoremap <silent> <C-Up> <c-w>k
   nnoremap <silent> <C-Down> <c-w>j
