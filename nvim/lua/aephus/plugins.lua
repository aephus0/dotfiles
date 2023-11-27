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

require("lazy").setup({

	"nvim-lua/plenary.nvim",
	"nvim-lua/popup.nvim",
	"windwp/nvim-autopairs",
	"numToStr/Comment.nvim",
	{ "catppuccin/nvim", as = "catppuccin" },
	"christoomey/vim-tmux-navigator",

	-- Completion
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/cmp-nvim-lsp",
	"saadparwaiz1/cmp_luasnip",

	"L3MON4D3/LuaSnip",
	"rafamadriz/friendly-snippets",

	"neovim/nvim-lspconfig",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"jose-elias-alvarez/null-ls.nvim",

	"nvim-telescope/telescope.nvim",

	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },

	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", lazy = false },

	"JoosepAlviste/nvim-ts-context-commentstring",

	"lewis6991/gitsigns.nvim",
	"nvim-tree/nvim-web-devicons",
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({})
		end,
	},
	"akinsho/toggleterm.nvim",
	"nvim-lualine/lualine.nvim",

	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		after = "catppuccin",
		config = function()
			require("bufferline").setup({
				highlights = require("catppuccin.groups.integrations.bufferline").get(),
			})
		end,
	},
})
