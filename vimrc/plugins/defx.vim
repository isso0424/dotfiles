autocmd FileType defx call s:defx_my_settings()

autocmd BufWritePost * call defx#redraw()
autocmd BufEnter * call defx#redraw()
call defx#custom#option('_', {
      \ 'winwidth': 40,
      \ 'split': 'vertical',
      \ 'direction': 'topleft',
      \ 'show_ignored_files': 1,
      \ 'buffer_name': 'exlorer',
      \ 'toggle': 1,
      \ 'resume': 1,
      \ 'columns': 'indent:git:filename:mark',
      \ })

source ~/dotfiles/vimrc/plugins/defx.vim
