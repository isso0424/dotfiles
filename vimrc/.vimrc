set nocompatible              " be iMproved, required
filetype off                  " required

"########
"dein.vim
"########
let s:cache_home= expand('~/.cache')
let s:dein_dir=s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
let &runtimepath = s:dein_repo_dir . "," . &runtimepath

call dein#begin(s:dein_dir)
" All of your Plugins must be added before the following line
call dein#add('Shougo/dein.vim')
call dein#add('itchyny/lightline.vim')
call dein#add('bronson/vim-trailing-whitespace')
call dein#add('Yggdroot/indentLine')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/neocomplete')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('nvie/vim-flake8')
call dein#add('hhatto/autopep8')
call dein#add('vim-airline/vim-airline')
call dein#add('airblade/vim-gitgutter')
call dein#add('nathanaelkane/vim-indent-guides')
call dein#add('luochen1990/rainbow')
call dein#add('scrooloose/nerdtree')
call dein#add('scrooloose/syntastic.git')
call dein#add('Shougo/unite.vim')
call dein#add('dart-lang/dart-vim-plugin')
call dein#add('thosakwe/vim-flutter')
call dein#end()
if has('vim_starting') && dein#check_install()
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

"タブ文字の多さ
set shiftwidth=4

"タブの空白化
set expandtab

"コマンドの補完の有効化
set wildmenu

"コマンドの履歴を1000件保持
set history=1000

" バックアップファイルを作らない
set nobackup

" スワップファイルを作らない
set noswapfile

" 編集中のファイルが変更されたら自動で読み直す
set autoread

" バッファが編集中でもその他のファイルを開けるように
set hidden

" 入力中のコマンドをステータスに表示する
set showcmd

" 現在の行を強調表示
set cursorline

" 現在の行を強調表示（縦）
""set cursorcolumn

" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore

"括弧の補完
set showmatch

"ステータスラインを常に表示
set laststatus=2

"カラースキームの適用
colorscheme molokai

"タブ文字の大きさ指定
set tabstop=4
set shiftwidth=4

"フォントサイズ
set guifont=MS_Gothic:h12:cSHIFTJIS

"閉じ括弧補完
inoremap { {}<LEFT>
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap < <><LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>
inoremap {<Enter> {}<LEFT><CR><ESC><S-0>
"バッファ用
set hidden
"NERDTreeを展開
nmap ff :NERDTree<CR>
"###########################################################################################
"プラグインの設定
"###########################################################################################
"ctrlP
let g:ctrlp_match_window = 'order:ttb,min:20,max:20,results:100' " マッチウインドウの設定. 「下部に表示, 大きさ20行で固定, 検索結果100件」
let g:ctrlp_show_hidden = 1 " .(ドット)から始まるファイルも検索対象にする
let g:ctrlp_types = ['fil'] "ファイル検索のみ使用
let g:ctrlp_extensions = ['funky', 'commandline'] " CtrlPの拡張として「funky」と「commandline」を使用
let g:ctrl_map = '<Nop>'
nnoremap <C-P> :CtrlP ~/<CR>

"################
"#Neocomlete.vim#
"################
let g:neocomplete#enable_at_startup = 1

if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#force_omni_input_patterns.c =
      \ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.cpp =
      \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'

" Vim起動時にneocompleteを有効にする
let g:neocomplete#enable_at_startup = 1
" smartcase有効化. 大文字が入力されるまで大文字小文字の区別を無視する
let g:neocomplete#enable_smart_case = 1
" 3文字以上の単語に対して補完を有効にする
let g:neocomplete#min_keyword_length = 3
" 区切り文字まで補完する
let g:neocomplete#enable_auto_delimiter = 1
" 1文字目の入力から補完のポップアップを表示
let g:neocomplete#auto_completion_start_length = 1
" バックスペースで補完のポップアップを閉じる
inoremap <expr><BS> neocomplete#smart_close_popup()."<C-h>"
" エンターキーで補完候補の確定. スニペットの展開もエンターキーで確定・・・・・・②
imap <expr><CR> neosnippet#expandable() ? "<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "<C-y>" : "<CR>"
" タブキーで補完候補の選択. スニペット内のジャンプもタブキーでジャンプ・・・・・・③
imap <expr><TAB> pumvisible() ? "<C-n>" : neosnippet#jumpable() ? "<Plug>(neosnippet_expand_or_jump)" : "<TAB>"

" ###################
" pythonsyntax
" ###################
if version < 600
  syntax clear
elseif exists('b:current_after_syntax')
  finish
endif

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
let g:airline_theme = 'dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#fnamemod = ':t'
",で次のバッファの表示
nnoremap <silent> , :bprev<CR>
".で前のバッファ表示
nnoremap <silent> . :bnext<CR>
"bdで現在のバッファ削除
nnoremap bd :bd<CR>

"######
"indent
"######
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermfg=237
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermfg=240

"#########
"gitgutter
"#########
set signcolumn=yes
let g:gitgutter_async = 1
let g:gitgutter_signmodified = 'rw'
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red
highlight GitGutterChangeDelete ctermfg=yellow

"#######
"rainbow
"#######
let g:rainbow_active = 1

noremap <C-K> :cd %:h <Enter> :NERDTree <Enter>

""#syntasticを適用
let g:syntastic_python_checkers = ['pylint']

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set clipboard=unnamed,autoselect
