require('sidebar-nvim').setup{}

vim.keymap.set('n', '<space>s', require'sidebar-nvim'.toggle, { silent = true })
