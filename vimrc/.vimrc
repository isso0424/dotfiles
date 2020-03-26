set nocompatible              " be iMproved, required
filetype off                  " required 
"########
"dein.vim
"########
let s:cache_home= expand('~/.cache')
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir . "," . &runtimepath
if dein#load_state(s:dein_dir)

    call dein#begin(s:dein_dir)
" All of your Plugins must be added before the following line
    let s:toml_dir = '~/dotfiles/vimrc/toml'
    let s:toml     = s:toml_dir . '/dein.toml'

    call dein#load_toml(s:toml, {'lazy': 0})
    call dein#end()
    call dein#save_state()
endif
if dein#check_install()
  call dein#install()
endif

"文字コードをutf-8にする
set encoding=utf-8
scriptencoding utf-8

"他のOSのファイルに対応
set fileformats=unix,dos,mac

"行番号の表示
set number

"構文ごとの文字色変化
syntax on

"backspace の有効化
set backspace=indent,eol,start

"インデントの保持
set autoindent

"自動インデント
set smartindent

"タブの空白化
set expandtab

set tabstop=2

"タブ文字の多さ
set shiftwidth=2

"コマンドの補完の有効化
set wildmenu

" 検索語をハイライト
set hlsearch

"コマンドの履歴を1000件保持
set history=1000

" バックアップファイルを作らない
set nobackup

" スワップファイルを作らない
set noswapfile

" 自動改行切る
set nowrap

" 編集中のファイルが変更されたら自動で読み直す
set autoread

" バッファが編集中でもその他のファイルを開けるように
set hidden

" 入力中のコマンドをステータスに表示する
set showcmd

" 現在の行を強調表示
set cursorline

" 現在の行を強調表示（縦）
set cursorcolumn

" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore

"括弧の補完
set showmatch

"ステータスラインを常に表示
set laststatus=2


set pyxversion=3
"カラースキームの適用
colorscheme molokai

set background=dark

" 背景の透明化
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none 


"フォントサイズ
set guifont=MS_Gothic:h12:cSHIFTJIS

"閉じ括弧補完
" inoremap { {}<LEFT>
" inoremap ( ()<LEFT>
" inoremap [ []<LEFT>
" inoremap < <><LEFT>
" inoremap ' ''<LEFT>
" inoremap " ""<LEFT>
" inoremap {<Enter> {}<LEFT><CR><ESC><S-0>
"バッファ用
set hidden
"NERDTreeを展開
"###########################################################################################
"プラグインの設定
"################

" We need nocompatible mode in order to continue lines with backslashes.
" Original setting will be restored.
let s:cpo_save = &cpo
set cpo&vim

syn match pythonOperator "\(+\|=\|-\|\^\|\*\)"
syn match pythonDelimiter "\(,\|\.\|:\)"
syn keyword pythonSpecialWord self

hi link pythonSpecialWord    Special
hi link pythonDelimiter      Special

let b:current_after_syntax = 'python'

let &cpo = s:cpo_save
unlet s:cpo_save

"########
"air-line
"########
"basic
",で次のバッファの表示
nnoremap <silent> , :bprev<CR>
".で前のバッファ表示
nnoremap <silent> . :bnext<CR>
"bdで現在のバッファ削除
nnoremap bd :bd<CR>

nnoremap s <Nop>

" :qのショートカット
nnoremap sq :q<CR>

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

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set clipboard=unnamed,autoselect

