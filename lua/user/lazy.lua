local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "

require("lazy").setup({

  -- colorscheme
  'navarasu/onedark.nvim',

  -- telescope
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- treesitter
  {
    'nvim-treesitter/nvim-treesitter', 
    'windwp/nvim-ts-autotag',
    'HiPhish/nvim-ts-rainbow2',
    build = ':TSUpdate'
  }

})
