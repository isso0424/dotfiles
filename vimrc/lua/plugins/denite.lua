local win_width_percent = 0.4
local win_height_percent = 0.4
local width = vim.o.columns * win_width_percent
local height = vim.o.lines * win_height_percent

vim.fn['denite#custom#option']('_', {
  split = 'floating',
  winwidth = math.floor(width),
  winclo = math.floor((vim.o.columns - width) / 2),
  winheight = math.floor(height),
  winrow = math.floor((vim.o.lines - height) / 2)
})

vim.api.nvim_exec(
[[
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
autocmd FileType denite call s:denite_my_settings()
]],
false
)

vim.api.nvim_exec(
[[
autocmd FileType denite-filter call s:denite_filter_my_settings()

function! s:denite_filter_my_settings() abort
  imap <silent><buffer> <C-o> <Plug>(denite_filter_quit)
endfunction
]],
false
)

vim.api.nvim_set_keymap('n', '<C-d>b', ':Denite buffer<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-d>g', ':DeniteCursorWord grep<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-d>f', ':Denite file/rec<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-d>t', ':Denite file/rec<CR>', { silent = true })
