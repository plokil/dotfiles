local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}
vim.g.mapleader = ' '
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- FloaTerm configuration
vim.keymap.set('n', "<leader>t", ":FloatermToggle <CR>")
vim.keymap.set('t', "<Esc>", "<C-\\><C-n>:q<CR>")
