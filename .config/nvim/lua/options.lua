-- Hint: use `:h <option>` to figure out the meaning if needed
vim.opt.clipboard = 'unnamedplus'   -- use system clipboard 
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
vim.opt.mouse = 'a'                 -- allow the mouse to be used in Nvim

-- Tab
vim.opt.tabstop = 4                 -- number of visual spaces per TAB
vim.opt.softtabstop = 4             -- number of spaces in tab when editing
vim.opt.shiftwidth = 4              -- insert 4 spaces on a tab
vim.opt.expandtab = true            -- tabs are spaces, mainly because of python

-- Line numbering
vim.opt.number = true               -- show absolute number
vim.opt.relativenumber = true       -- add numbers to each line on the left side
vim.opt.cursorline = true           -- highlight cursor line underneath the cursor horizontally
vim.opt.cursorlineopt = "number"    -- highlight only the line number

-- UI
vim.opt.splitbelow = true           -- open new vertical split bottom
vim.opt.splitright = true           -- open new horizontal splits right
-- vim.opt.termguicolors = true        -- enable 24-bit RGB color in the TUI
vim.opt.showmode = false            -- remove the mode hint from the status line
vim.opt.updatetime = 250            -- for git line stuff, update the thing every 250ms
vim.opt.laststatus = 2              -- for lualine
vim.opt.colorcolumn = "100"         -- highlight the 100th column
vim.opt.wrap = false                -- don't wrap long lines
vim.opt.fcs = "eob: "               -- disable the ~'s in line column for clearer ui
vim.opt.scrolloff = 10              -- scroll the screen so that the cursor doesn't touch the top
                                    -- or the bottom of the screen

-- Searching
vim.opt.incsearch = true            -- search as characters are entered
vim.opt.hlsearch = true             -- highlight matches
vim.opt.ignorecase = true           -- ignore case in searches by default
vim.opt.smartcase = true            -- but make it case sensitive if an uppercase is entered

