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
        build = ":TSUpdate"
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
    }
})
