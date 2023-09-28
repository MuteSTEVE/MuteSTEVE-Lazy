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

  -- comment
  'terrortylor/nvim-comment',

  -- gitsigns
  'lewis6991/gitsigns.nvim',

  -- indent-blankline
  'lukas-reineke/indent-blankline.nvim',

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
      'windwp/nvim-autopairs',
    },
    build = ':TSUpdate'
  },

  -- Completion & LSP
  {
    -- cmp
    {
      {
        'hrsh7th/nvim-cmp',
        dependencies = {
          'hrsh7th/cmp-buffer',
          'hrsh7th/cmp-path',
          'hrsh7th/cmp-cmdline',
          'hrsh7th/cmp-nvim-lsp',
          'saadparwaiz1/cmp_luasnip'
        }
      },
      {
        'ults-io/vscode-react-javascript-snippets',
        build = 'yarn install --frozen-lockfile && yarn compile',
      },
      -- Snippets
      'L3MON4D3/LuaSnip',
      'rafamadriz/friendly-snippets',
    },
    -- LSP
    {
      'neovim/nvim-lspconfig',
      dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'jose-elias-alvarez/null-ls.nvim'
      }
    }
  },

  -- nvim-tree
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = 'kyazdani42/nvim-web-devicons'
  }

})
