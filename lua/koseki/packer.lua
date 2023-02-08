-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Theme
    use 'Mofiqul/vscode.nvim'
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    -- Status bar
    use 'nvim-tree/nvim-web-devicons'
    use 'feline-nvim/feline.nvim'
    use {
        'lewis6991/gitsigns.nvim',
        tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    }
    -- For finding files
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    -- For easy comments
    use {
        "terrortylor/nvim-comment",
        config = function()
            require('nvim_comment').setup()
        end
    }
    -- For add terminal inside neovim
    use {
        "akinsho/toggleterm.nvim", tag = '*'
    }
    -- Utilities
    use 'tpope/vim-surround'
    use 'wellle/targets.vim'
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use 'windwp/nvim-ts-autotag'
    -- For managing files
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    -- Git
    use('tpope/vim-fugitive')
    -- LSP manager
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
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
    }
end)
