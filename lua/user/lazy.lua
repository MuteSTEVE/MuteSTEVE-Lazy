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

  'terrortylor/nvim-comment',
  'lewis6991/gitsigns.nvim',
  'yamatsum/nvim-cursorline',
  'akinsho/toggleterm.nvim',
  'folke/which-key.nvim',

  -- telescope
  {
    'nvim-telescope/telescope.nvim',
    dependencies = 'nvim-lua/plenary.nvim',
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
          'hrsh7th/cmp-nvim-lua',
          'saadparwaiz1/cmp_luasnip',
          'uga-rosa/cmp-dictionary',
        }
      },
      -- Snippets
      'L3MON4D3/LuaSnip',
      'rafamadriz/friendly-snippets',
      {
        'ults-io/vscode-react-javascript-snippets',
        build = 'yarn install --frozen-lockfile && yarn compile',
      },
    },
    -- LSP
    {
      'neovim/nvim-lspconfig',
      dependencies = 'jose-elias-alvarez/null-ls.nvim',
      {
        'williamboman/mason.nvim',
        dependencies = 'williamboman/mason-lspconfig.nvim',
      },
      'kkharji/lspsaga.nvim',
    }
  },

  -- nvim-tree
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = 'kyazdani42/nvim-web-devicons'
  },

  -- Lualine
  {
    'nvim-lualine/lualine.nvim',
    dependencies = 'kyazdani42/nvim-web-devicons'
  },

  -- Colorizer
  {
    'norcalli/nvim-colorizer.lua',
    ft = { "css", "html", "php", "js", },
    config = function()
      require('colorizer').setup()
    end
  },

  -- flash
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },

  -- mini
  {
    'echasnovski/mini.nvim',
    config = function ()
      require('mini.indentscope').setup()
    end
  },

  {
    "jiaoshijie/undotree",
    dependencies = "nvim-lua/plenary.nvim",
    config = true,
    keys = { -- load the plugin only when using it's keybinding:
      { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
    },
  },

  -- nvim-ufo
  {
    'kevinhwang91/nvim-ufo',
    dependencies = 'kevinhwang91/promise-async'
  },

  -- LazyGit
  {
    "kdheepak/lazygit.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    keys = { "<leader>g", "<cmd>LazyGit<cr>", desc = "LazyGit"}
  },

})
