local fn = vim.fn

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system {
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	}
	print "Installing packer close and reopen Neovim..."
	vim.cmd [[packadd packer.nvim]]
end

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float { border = "rounded" }
		end,
	},
}

return packer.startup(function(use)
	use "wbthomason/packer.nvim"
	use "nvim-lua/popup.nvim"
	use "nvim-lua/plenary.nvim"

	--telescope
	use "nvim-telescope/telescope.nvim"

	-- Vimscript
	use "editorconfig/editorconfig-vim"
	use "airblade/vim-rooter"
	use "tpope/vim-eunuch"

	-- nvim lua
	use "lewis6991/gitsigns.nvim"
	use "windwp/nvim-autopairs"
	use "windwp/nvim-ts-autotag"
	use "folke/which-key.nvim"
	use "folke/trouble.nvim"
	use "akinsho/toggleterm.nvim"
	use "goolord/alpha-nvim"
	use "NvChad/nvim-colorizer.lua"
	use "ruifm/gitlinker.nvim"
	use "famiu/bufdelete.nvim"
	use "TimUntersberger/neogit"
	use "lukas-reineke/indent-blankline.nvim"
	use {
		"numToStr/Comment.nvim",
		config = function ()
			require('Comment').setup()
		end
	}
	use {
		"phaazon/hop.nvim",
		config = function ()
			require 'hop'.setup()
		end
	}
	use({
	    "kylechui/nvim-surround",
	    config = function()
	        require("nvim-surround").setup()
		end
	})
	use {
		"nvim-neotest/neotest",
		requires = {
			"haydenmeade/neotest-jest",
			"antoinemadec/FixCursorHold.nvim"
		}
	}
	use {
		"kevinhwang91/nvim-ufo",
		requires = {
			"kevinhwang91/promise-async"
		}
	}

	--lualine
	use "nvim-lualine/lualine.nvim"

	--bufferline
	use "akinsho/bufferline.nvim"

	--completion
	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-buffer"
	use "hrsh7th/cmp-path"
	use "hrsh7th/cmp-cmdline"
	use "hrsh7th/cmp-nvim-lsp"
	use "L3MON4D3/LuaSnip"
	use "saadparwaiz1/cmp_luasnip"

	--lsp
	use {
	    "williamboman/mason.nvim",
	    "williamboman/mason-lspconfig.nvim",
	    "neovim/nvim-lspconfig",
	}
	use "RRethy/vim-illuminate"
	use "jose-elias-alvarez/null-ls.nvim"

	use "kyazdani42/nvim-web-devicons"
	use "kyazdani42/nvim-tree.lua"

	--treesitter
	use {
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	}
	use "p00f/nvim-ts-rainbow"

	--colorschemes
	use "olimorris/onedarkpro.nvim"
	use "rmehri01/onenord.nvim"
	use "glepnir/zephyr-nvim"

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)

