vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'tpope/vim-fugitive'

  use {
    'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'
  }
  use 'nvim-treesitter/nvim-treesitter-context'

  use 'numToStr/Comment.nvim'

  -- colorschemes
  use 'tanvirtin/monokai.nvim'
  use 'AlexvZyl/nordic.nvim'
  use 'phha/zenburn.nvim'
  use 'ofirgall/ofirkai.nvim'
  use 'sainnhe/sonokai'
  use 'tomasr/molokai'
  use 'windwp/nvim-autopairs'
  use 'navarasu/onedark.nvim'

  -- lsp
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v4.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
  }

  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }

  use 'folke/neodev.nvim'

  use 'lewis6991/gitsigns.nvim'

  use 'mrcjkb/rustaceanvim'

  -- vista.vim
  use 'liuchengxu/vista.vim'


end)
