require("lazy").setup({
    -- advanced undo
	"mbbill/undotree",

    -- highlight colors
    "norcalli/nvim-colorizer.lua",

    -- markdown
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
        opts = {},
    },

    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true,
        opts = {
            disable_filetype = { "markdown", "TelescopePrompt", "spectre_panel" }
        }
    },

    -- indentation
    "nvimdev/indentmini.nvim",

    -- file browser
    {
        'stevearc/oil.nvim',
        opts = {},
        dependencies = { "nvim-tree/nvim-web-devicons" },
        lazy = false,
    },

    -- simple commenting
    "numToStr/Comment.nvim",

    -- tabs
    {
        'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim',      -- git status
            'nvim-tree/nvim-web-devicons'  -- file icons
        },
        init = function() vim.g.barbar_auto_setup = true end,
    },

    -- autocompletion
	{
        -- make it pretty
		"onsails/lspkind.nvim",
		event = { "VimEnter" },
	},{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"lspkind.nvim",
			"hrsh7th/cmp-nvim-lsp", -- lsp
			"hrsh7th/cmp-buffer",   -- buffer
			"hrsh7th/cmp-path",     -- path
            "hrsh7th/cmp-cmdline",  -- cmdline
		},
		config = function()
			require("config.nvim-cmp")
		end,
	},{
		"L3MON4D3/LuaSnip",
		version = "v2.*",
	},

    -- browsing lists
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" }
    },

    -- lsp
    "williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",

    -- colorscheme
    {
        "folke/tokyonight.nvim",
        opts = { transparent = true, }
    }
})
