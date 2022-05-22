vim.opt.nocompatible = true
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
vim.cmd('set encoding=utf-8')
vim.cmd('scriptencoding utf-8')
vim.cmd('set fileformats=unix,dos,mac')

-- editor
vim.cmd('set number')
vim.cmd('syntax on')
vim.cmd('set nowrap')
vim.cmd('set showcmd')
vim.cmd('set cursorline')
vim.cmd('set cursorcolumn')
vim.cmd('set laststatus=2')
vim.cmd('set pyxversion=3')
vim.cmd('set ambiwidth=double')

-- background
vim.cmd('set background=dark')
vim.cmd('highlight Normal ctermbg=none')
vim.cmd('highlight NonText ctermbg=none')
vim.cmd('highlight LineNr ctermbg=none')
vim.cmd('highlight Folded ctermbg=none')
vim.cmd('highlight EndOfBuffer ctermbg=none ')

-- indent
vim.cmd('set autoindent')
vim.cmd('set smartindent')
vim.cmd('set expandtab')
vim.cmd('set tabstop=2')
vim.cmd('set shiftwidth=2')

-- control
vim.cmd('set backspace=indent.eol,start')
vim.cmd('set virtualedit=onemore')
vim.cmd('set showmatch')

-- command
vim.cmd('set wild')
vim.cmd('set history=100')

-- search
vim.cmd('set hlsearch')

-- backups
vim.cmd('set nobackup')
vim.cmd('set noswapfile')

-- file
vim.cmd('set hidden')
vim.cmd('set autoread')

-- clipboard
vim.cmd('set clipboard=unnamed,autoselect')
