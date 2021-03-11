"bdで現在のバッファ削除
nnoremap bd :bd<CR>

nnoremap s <Nop>

" :qのショートカット
nnoremap sq :q<CR>

" 全バッファ&全タブリロード
nnoremap sr :bufdo e!<CR>:tabdo e!<CR>

" タブ関連
nnoremap st :tabnew<CR>
nnoremap se gt
nnoremap sw gT

" ウィンドウの移動ショートカット
nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l

" ウィンドウの分割
nnoremap ss :split<CR>
nnoremap sv :vsplit<CR>

" 検索ハイライト解除
nnoremap s<Esc> :nohlsearch<CR>

noremap <silent> <Up> <Nop>
noremap <silent> <Down> <Nop>
noremap <silent> <Left> <Nop>
noremap <silent> <Right> <Nop>

inoremap <silent> <Up> <Nop>
inoremap <silent> <Down> <Nop>
inoremap <silent> <Left> <Nop>
inoremap <silent> <Right> <Nop>

inoremap jj <ESC>:w<CR>

nnoremap si 0I//

" MarkdownPreview
noremap sm :MarkdownPreview<CR>

nnoremap td :grep TODO -r $(ls \\| grep -Po '^(?!.*node_modules).*$')<CR>
