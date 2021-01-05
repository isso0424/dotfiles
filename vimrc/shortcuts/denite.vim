
" 【Ctrl + d + a】 カレントディレクトリとバッファを表示
nnoremap <silent><C-d>a :<C-u>Denite file buffer -split=floating file:new<CR>
" 【Ctrl + d + b】 バッファを表示
nnoremap <silent><C-d>b :<C-u>Denite buffer -split=floating file:new<CR>
" 【Ctrl + d + f】 カレントディレクトリを表示
nnoremap <silent><C-d>f :<C-u>Denite file -split=floating file:new<CR>
" 【Ctrl + d + r】 カレントディレクトリ以下を再帰的に表示
nnoremap <silent><C-d>r :<C-u>Denite file/rec -split=floating file:new<CR>
" 【Ctrl + d + gr】 カレントディレクトリ以下のファイルから指定した文字列を検索
nnoremap <silent><C-d>gr :<C-u>Denite grep -buffer-name=search<CR>
" 【Ctrl + d + ,】 カレントディレクトリ以下のファイルからカーソル下の文字列を検索
nnoremap <silent><C-d>, :<C-u>DeniteCursorWord grep -buffer-name=search line<CR>
" 【Ctrl + d + gs】 grepした結果を再表示
nnoremap <silent><C-d>gs :<C-u>Denite -resume -buffer-name=search<CR>
" 【Ctrl + d + c】 Neovim内で実行したコマンドを表示
nnoremap <silent><C-d>c :<C-u>Denite command_history -split=floating<CR>

autocmd FileType denite call s:denite_my_settings()
