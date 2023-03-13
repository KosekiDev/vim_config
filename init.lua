require("koseki")

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

vim.g.mapleader = " "

require("lazy").setup({
    'nvim-tree/nvim-web-devicons',
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    'Mofiqul/vscode.nvim',
    'feline-nvim/feline.nvim',
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
    },
    -- Git
    {
        'lewis6991/gitsigns.nvim',
        tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    },
    ('tpope/vim-fugitive'),
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },
    -- Utilities
    'manzeloth/live-server',
    'gerazov/toggle-bool.nvim',
    {'akinsho/toggleterm.nvim', version = "*", config = true},
    'tpope/vim-surround',
    'wellle/targets.vim',
    {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    },
    'windwp/nvim-ts-autotag',
    -- For easy comments
    {
        "terrortylor/nvim-comment",
        config = function()
            require('nvim_comment').setup()
        end
    },
    -- For managing files
    ('theprimeagen/harpoon'),
    ('mbbill/undotree'),
    -- LSP manager
    'jose-elias-alvarez/null-ls.nvim',
    {
        'VonHeikemen/lsp-zero.nvim',
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
    }
})
