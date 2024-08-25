local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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
    -- The colorscheme
    {
        "bluz71/vim-moonfly-colors", 
        name = "moonfly", 
        lazy = false, 
        priority = 1000 
    },
    -- The status bar
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require("config.lualine")
        end
    },
    -- Advanced syntax highlighting
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function () 
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                highlight = { enable = true },
                indent = { enable = true },  
            })
        end
    },
    -- Git differences in the line bar
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("config.gitsigns")
        end
    },
    -- Autopair delimiters (like "", (), {} etc.)
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true,
        opts = {
            map_cr = true
        }
        -- use opts = {} for passing setup options
        -- this is equalent to setup({}) function
    },
    -- Show keystrokes
    {
        "NStefan002/screenkey.nvim",
        lazy = false,
        version = "*", -- or branch = "dev", to use the latest commit
    },
    -- Commenting stuff with gc and gb shortcuts
    {
        'numToStr/Comment.nvim',
        config = function()
            require("config.Comment")
        end
    },
    -- floating terminal on <leader>t
    {
        "voldikss/vim-floaterm", 
    },
    -- Rust stuff mainly
    {
        "williamboman/mason.nvim",
        config = function()
            require("config.mason")
        end
    },
    {
        "williamboman/mason-lspconfig.nvim"
    },
    {
        "neovim/nvim-lspconfig"
    },
    --{
        --"puremourning/vimspector"
    --},
--    {
--        "mfussenegger/nvim-dap"
--    },
    {
        'mrcjkb/rustaceanvim',
        version = '^5', -- Recommended
        lazy = false, -- This plugin is already lazy
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        "hrsh7th/nvim-cmp",
        config = function()
            require("config.cmp")
        end
    },
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "hrsh7th/cmp-vsnip",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-buffer",
    "hrsh7th/vim-vsnip",
})
