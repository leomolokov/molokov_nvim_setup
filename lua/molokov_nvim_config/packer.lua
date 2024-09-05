-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }}

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},
		  {'saadparwaiz1/cmp_luasnip'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use('numirias/semshi')

  use {
      'rmagatti/goto-preview',
      config = function()
          require('goto-preview')
      end
  }

  --use {"nvim-neotest/nvim-nio"}
  --use {"rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  --use 'theHamsta/nvim-dap-virtual-text'
  --use {'mfussenegger/nvim-dap-python'}
  --require('dapui').setup()
  --require("dap-python").setup("/path/to/venv/bin/python")
  --require('dap-python').setup()

  --use {
  --    "ThePrimeagen/refactoring.nvim",
  --    requires = {
  --        {"nvim-lua/plenary.nvim"},
  --        {"nvim-treesitter/nvim-treesitter"}
  --    }
  --}
end)
