local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
	return
end

lazy.setup({
	"nvim-lua/popup.nvim",
	"nvim-lua/plenary.nvim",

	--telescope
	"nvim-telescope/telescope.nvim",

	-- Vimscript
	"airblade/vim-rooter",
	"tpope/vim-eunuch",

	-- nvim lua
	"lewis6991/gitsigns.nvim",
	"windwp/nvim-autopairs",
	"windwp/nvim-ts-autotag",
	"folke/which-key.nvim",
	"folke/trouble.nvim",
	"akinsho/toggleterm.nvim",
	"goolord/alpha-nvim",
	"NvChad/nvim-colorizer.lua",
	"ruifm/gitlinker.nvim",
	"famiu/bufdelete.nvim",
	"NeogitOrg/neogit",
	"lukas-reineke/indent-blankline.nvim",
	"gpanders/editorconfig.nvim",
	{
		"numToStr/Comment.nvim",
		config = function ()
			require('Comment').setup()
		end
	},
	{
		"phaazon/hop.nvim",
		config = function ()
			require 'hop'.setup()
		end
	},
	{
		"kylechui/nvim-surround",
		config = function()
			require("nvim-surround").setup()
		end
	},
	{
		"nvim-neotest/neotest",
		dependencies = {
			{ "haydenmeade/neotest-jest" },
			{ "antoinemadec/FixCursorHold.nvim" }
		}
	},
	{
		"kevinhwang91/nvim-ufo",
		dependencies = {{ "kevinhwang91/promise-async" }}
	},
	{
		"ellisonleao/glow.nvim",
		config = function()
			require("glow").setup()
		end
	},

	--lualine
	"nvim-lualine/lualine.nvim",

	--bufferline
	"akinsho/bufferline.nvim",

	--completion
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/cmp-nvim-lsp",
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",

	--lsp
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			{ "williamboman/mason.nvim", },
			{ "neovim/nvim-lspconfig" },
		}
	},
	"RRethy/vim-illuminate",
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			{"nvim-tree/nvim-web-devicons", },
		},
	},

	--treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
	"p00f/nvim-ts-rainbow",

	--colorschemes
	{
		"rmehri01/onenord.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("onenord").setup {
				fade_nc = true,
				styles = {
					diagnostics = "undercurl"
				},
			}
		end
	},
	"olimorris/onedarkpro.nvim",
	"glepnir/zephyr-nvim",
})

