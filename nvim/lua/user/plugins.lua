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

	use "tpope/vim-commentary"
	use "tpope/vim-vinegar"
	use "tpope/vim-fugitive"

	use "editorconfig/editorconfig-vim"
	use "easymotion/vim-easymotion"
	use "airblade/vim-rooter"
	use "lewis6991/gitsigns.nvim"
	use "windwp/nvim-autopairs"
	use "folke/which-key.nvim"
	use "folke/trouble.nvim"
	use "akinsho/toggleterm.nvim"
	use "klen/nvim-test"

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
	use "neovim/nvim-lspconfig"
	use "williamboman/nvim-lsp-installer"

	use "kyazdani42/nvim-web-devicons"
	use "kyazdani42/nvim-tree.lua"

	--treesitter
	use {
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	}
	use "p00f/nvim-ts-rainbow"

	--colorschemes
	use "ellisonleao/gruvbox.nvim"

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)

