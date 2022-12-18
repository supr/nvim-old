vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use { 'nvim-telescope/telescope.nvim',
        requires = {
		{
		  'nvim-lua/plenary.nvim',
		  'nvim-telescope/telescope-fzf-native.nvim'
		},
	}
  }

  use { 'navarasu/onedark.nvim',
        as = 'onedark',
	config = function()
		vim.cmd("colorscheme onedark")
	end
  }

  use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } }

  use { 'mbbill/undotree' }

  use { 'VonHeikemen/lsp-zero.nvim',
    requires = {
	    {'neovim/nvim-lspconfig'},
	    {'williamboman/mason.nvim'},
	    {'williamboman/mason-lspconfig.nvim'},

	    { 'hrsh7th/nvim-cmp' },
	    { 'hrsh7th/cmp-buffer' },
	    { 'hrsh7th/cmp-path' },
	    { 'saadparwaiz1/cmp_luasnip' },
	    { 'hrsh7th/cmp-nvim-lsp' },
	    { 'hrsh7th/cmp-nvim-lua' },

	    { 'L3MON4D3/LuaSnip' },
	    { 'rafamadriz/friendly-snippets' },
    },
  }
end)
