vim.opt.compatible = false
vim.cmd('filetype off')

local cache_home = vim.fn.expand("~/.cache")
local dein_dir = cache_home.."/dein"
local dein_repo_dir = dein_dir.."/repos/github.com/Shougo/dein.vim"
if vim.fn.isdirectory(dein_repo_dir) ~= 0 then
  os.execute("git clone https://github.com/Shougo/dein.vim "..dein_repo_dir)
end

vim.api.nvim_set_option('runtimepath', dein_repo_dir..','..vim.api.nvim_get_option('runtimepath'))

if (vim.fn['dein#load_state'](dein_dir) == 1) then
  vim.fn['dein#begin'](dein_dir)
  vim.fn['dein#add']('marko-cerovac/material.nvim')
  local toml_dir = vim.fn.expand("~/dotfiles/vimrc/toml")
  local toml = toml_dir..'/dein.toml'
  local lazy = toml_dir..'/lazy.toml'
  local language = toml_dir..'/language.toml'

  vim.fn['dein#load_toml'](toml, { lazy = 0 })
  vim.fn['dein#load_toml'](lazy, { lazy = 1 })
  vim.fn['dein#load_toml'](language, { lazy = 2 })
  vim.fn['dein#end']()
  vim.fn['dein#save_state']()
end

if (vim.fn['dein#check_install']() ~= 0) then
  vim.fn['dein#install']()
end

-- Options
-- encoding
vim.opt.encoding = 'utf-8'
vim.opt.fileencodings = 'utf-8'
vim.opt.fileformats = 'unix,dos,mac'

-- editor
vim.cmd('syntax on')
vim.opt.number = true
vim.opt.wrap = false
vim.opt.showcmd = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.laststatus = 2
vim.opt.pyxversion = 3
vim.opt.ambiwidth = 'double'

-- background
vim.opt.background = 'dark'
vim.cmd('highlight Normal ctermbg=none')
vim.cmd('highlight NonText ctermbg=none')
vim.cmd('highlight LineNr ctermbg=none')
vim.cmd('highlight Folded ctermbg=none')
vim.cmd('highlight EndOfBuffer ctermbg=none ')

-- indent
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- control
vim.opt.backspace = {'indent', 'eol', 'start'}
vim.opt.virtualedit = 'onemore'
vim.opt.showmatch = true

-- command
vim.opt.wildmenu = true
vim.opt.history = 100

-- search
vim.opt.hlsearch = true

-- backups
vim.opt.backup = false
vim.opt.swapfile = false

-- file
vim.opt.hidden = true
vim.opt.autoread = true
