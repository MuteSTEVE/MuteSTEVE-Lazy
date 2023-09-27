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

  -- telescope, undotree
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'debugloop/telescope-undo.nvim'
    }
  },

  -- treesitter
  {
    'nvim-treesitter/nvim-treesitter', 
    dependencies = {
      'windwp/nvim-ts-autotag',
      'HiPhish/nvim-ts-rainbow2',
    },
    build = ':TSUpdate'
  },

  -- Completion
  {
    -- cmp
    {
      'hrsh7th/nvim-cmp',
      dependencies = {
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'saadparwaiz1/cmp_luasnip'
      }
    },
    -- Snippets
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets'
  },

})
