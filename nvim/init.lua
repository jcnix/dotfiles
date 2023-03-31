if vim.g.vscode then

	vim.opt.clipboard = 'unnamedplus'
	require "vscode.nvim-ui"

else

	require "user.options"
	-- vim.cmd[[colorscheme tokyonight]]
	vim.cmd "set guifont=JetBrainsMono\\ Nerd\\ Font:h13"

	require "user.colorscheme"
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

