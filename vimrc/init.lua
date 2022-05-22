vim.cmd('set nocompatible')
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
