nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim', 'help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " .expand('<cword>')
  endif
endfunction

nmap grn <Plug>(coc-rename)
nmap gf <Plug>(coc-format-selected)
xmap gf <Plug>(coc-format-selected)

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr><C-j> pumvisible() ? "\<C-p>" : "<C-j>"

" Remap keys for applying codeAction to the current buffer.
nmap <silent> gac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <silent> gqf  <Plug>(coc-fix-current)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
