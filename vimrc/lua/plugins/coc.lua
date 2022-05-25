vim.keymap.set(
  'i',
  '<TAB>',
  function()
    return vim.fn.pumvisible() == 1 and "<C-n>" or "<Tab>"
  end,
  { expr = true, noremap = true }
)

vim.keymap.set(
  'i',
  '<CR>',
  function()
    return vim.fn.pumvisible() == 1 and "<C-y>" or "<CR>"
  end,
  { noremap = true, expr = true }
)

vim.api.nvim_set_keymap('n', 'g[', '<Plug>(coc-diagnostic-prev)', { silent = true })
vim.api.nvim_set_keymap('n', 'g]', '<Plug>(coc-diagnostic-next)', { silent = true })
vim.api.nvim_set_keymap('n', 'gd', '<Plug>(coc-definition)', { silent = true })
vim.api.nvim_set_keymap('n', 'gy', '<Plug>(coc-type-definition)', { silent = true })
vim.api.nvim_set_keymap('n', 'gi', '<Plug>(coc-implementation)', { silent = true })
vim.api.nvim_set_keymap('n', 'gr', '<Plug>(coc-references)', { silent = true })
