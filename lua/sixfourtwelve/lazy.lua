vim.g.mapleader = " "

return require("lazy").setup({
	{
		"unisonweb/unison",
		branch = "trunk",
		config = function(plugin)
			vim.opt.rtp:append(plugin.dir .. "/editor-support/vim")
			require("lazy.core.loader").packadd(plugin.dir .. "/editor-support/vim")
		end,
		init = function(plugin)
			require("lazy.core.loader").ftdetect(plugin.dir .. "/editor-support/vim")
		end,
	},
  {'andweeb/presence.nvim'},
	{ 'kvrohit/rasmus.nvim' },
	{ "rainglow/vim" },
	{ "folke/tokyonight.nvim" },
	{ "nvim-treesitter/nvim-treesitter",  build = ':TSUpdate', lazy = false },
	{ "nvim-treesitter/playground" },
	{ "tpope/vim-fugitive" },
	{ "dmmulroy/tsc.nvim" },
	{ "chrisbra/Colorizer" },
	{ "shaunsingh/nord.nvim" },

	-- Git stuff
	{ "lewis6991/gitsigns.nvim" },
	{ "f-person/git-blame.nvim" },

	{ 'reasonml-editor/vim-reason-plus' },
	{ 'danielo515/nvim-treesitter-reason' },
	{ 'windwp/nvim-autopairs' },
	{
		'VonHeikemen/lsp-zero.nvim',
		lazy = false,
		branch = 'v1.x',
		dependencies = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-nvim-lua' },

			-- Snippets
			{ 'L3MON4D3/LuaSnip' },
			{ 'rafamadriz/friendly-snippets' },
		}
	},
	{ 'mhartington/formatter.nvim' },
	{ 'kyazdani42/nvim-tree.lua',               dependencies = 'kyazdani42/nvim-web-devicons' },
	{ 'nvim-telescope/telescope.nvim',          dependencies = { { 'nvim-lua/plenary.nvim' } } },
	{ 'windwp/windline.nvim' },
	{ 'ggandor/lightspeed.nvim' },
	{ "zbirenbaum/copilot.lua" },
	{ "mbbill/undotree" },
	{ "nvim-treesitter/nvim-treesitter-context" },

	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" }
	},
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000
	},
	{ "nyoom-engineering/oxocarbon.nvim" }

}, opts)
