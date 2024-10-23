require 'core.options'
require 'core.keymaps'
require 'core.highlight_yank'


local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end 
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    require 'plugins.neotree',
    require 'plugins.colortheme',
    require 'plugins.bufferline',
    require 'plugins.lualine',
    require 'plugins.treesitter',
    require 'plugins.telescope',
    require 'plugins.lsp',
    require 'plugins.autocompletion',
    require 'plugins.git',
    require 'plugins.alpha',
    require 'plugins.indentblackline',
    require 'plugins.lazygit',
    require 'plugins.undotree',
    require 'plugins.nvimnotify',
    require 'plugins.fidget',
    require 'plugins.wilder',
    require 'plugins.surround',
    require 'plugins.whichkey',
    require 'plugins.repeat',
    require 'plugins.toggleterm',
    require 'plugins.autosession',
    require 'plugins.trouble',
    require 'plugins.comment',
    require 'plugins.todocomments',
    require 'plugins.substitute',
    require 'plugins.tmuxnavigator',
})
