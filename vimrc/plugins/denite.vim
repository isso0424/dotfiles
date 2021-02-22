autocmd FileType denite call s:denite_my_settings()

function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  " 【l】ファイルを開く
  nnoremap <silent><buffer><expr> l
  \ denite#do_map('do_action')
  " 【o】 ファイルを開く
  nnoremap <silent><buffer><expr> o
  \ denite#do_map('do_action')
  " 【s】 ウィンドウを水平分割してファイルを開く
  nnoremap <silent><buffer><expr> s
  \ denite#do_map('do_action', 'split')
  " 【v】 ウィンドウを垂直分割してファイルを開く
  nnoremap <silent><buffer><expr> v
  \ denite#do_map('do_action', 'vsplit')
  " 【d】 ファイルを削除する
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  " 【p】 ファイルをプレビュー画面で開く
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  " 【ESC】 / 【q】 denite.nvimを終了する
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  " 【i】 ファイル名で検索する
  nnoremap <silent><buffer><expr> /
  \ denite#do_map('open_filter_buffer')
  " 【SPACE】 ファイルを複数選択する
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
  " .. 1個上のディレクトリへ行く
  nnoremap <silent><buffer><expr> ..
  \ denite#do_map('move_up_path')
endfunction

let s:denite_win_width_percent = 0.4
let s:denite_win_height_percent = 0.4

" Change denite default options
call denite#custom#option('default', {
    \ 'split': 'floating',
    \ 'winwidth': float2nr(&columns * s:denite_win_width_percent),
    \ 'wincol': float2nr((&columns - (&columns * s:denite_win_width_percent)) / 2),
    \ 'winheight': float2nr(&lines * s:denite_win_height_percent),
    \ 'winrow': float2nr((&lines - (&lines * s:denite_win_height_percent)) / 2),
    \ })

autocmd FileType denite-filter call s:denite_filter_my_settings()

function! s:denite_filter_my_settings() abort
  imap <silent><buffer> <C-o> <Plug>(denite_filter_quit)
endfunction

nnoremap <silent> <C-d><C-b> :Denite buffer<CR>
nnoremap <silent> <C-d><C-g> :Denite grep<CR>
