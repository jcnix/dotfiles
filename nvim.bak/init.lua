if vim.g.vscode then

	vim.opt.clipboard = 'unnamedplus'
	-- require "vscode.nvim-ui"

else
	vim.g.loaded_netrw = 1
	vim.g.loaded_netrwPlugin = 1

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

	-- require "user.colorscheme"
	require "user.options"
	vim.cmd "set guifont=JetBrainsMono\\ Nerd\\ Font:h13"

	require "user.keymaps"
	require "user.plugins"
	require "user.cmp"
	require "user.lsp"
	require "user.telescope"
	require "user.treesitter"
	require "user.autopairs"
	require "user.lualine"
	require "user.bufferline"
	require "user.nvimtree"
	require "user.gitsigns"
	require "user.whichkey"
	require "user.trouble"
	require "user.toggleterm"
	require "user.test"
	require "user.alpha"
	require "user.colorizer"
	require "user.gitlinker"
	require "user.neogit"
	require "user.ufo"
	require "user.blankline"

	-- vim.cmd "set completeopt=menu,menuone,noselect"

end

