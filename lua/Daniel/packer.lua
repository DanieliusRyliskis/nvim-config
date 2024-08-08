-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use { 'VonHeikemen/lsp-zero.nvim', branch = 'v4.x' }
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use "nvim-tree/nvim-web-devicons"
  use "nvim-tree/nvim-tree.lua"
  use "akinsho/bufferline.nvim"
  use "moll/vim-bbye"

  use {
      'L3MON4D3/LuaSnip',
      requires = { 'rafamadriz/friendly-snippets' },
  }


  use {
	  "0xstepit/flow.nvim",
	  lazy = false,
	  priority = 1000,
	  opts = {},
	  config = function()
		  require("flow").setup{
			  transparent = true, -- Set transparent background.
			  fluo_color = "pink", -- Fluo color: pink, yellow, orange, or green.
			  mode = "normal", -- Intensity of the palette: normal, bright, desaturate, or dark.
			  aggressive_spell = false, -- Display colors for spell check.
		  }

		end,
  }
  use {
	  "tiagovla/tokyodark.nvim",
	  config = function()
		  local opts = {
			  transparent_background = true,
			  gamma = 1,
			  styles = {
				  comments = { italic = true },
				  keywords = { italic = true },
				  identifiers = { italic = true },
				  functions = {},
				  variables = {},
			  },
			  custom_highlights = function(highlights, palette)
				  -- Customize highlights if needed
				  return highlights
			  end,
			  custom_palette = function(palette)
				  -- Customize palette if needed
				  return palette
			  end,
			  terminal_colors = true,
		  }
		  require("tokyodark").setup(opts)
          vim.cmd [[colorscheme tokyodark]]
	  end,
  }

  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

end)
