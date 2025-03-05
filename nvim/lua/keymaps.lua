local opts = { noremap = true }
local map = vim.keymap.set
vim.g.mapleader = " "

require("Comment").setup({
    toggler = {
        line = '<C-/>',
        block = '<C-S-/>'
    },
    opleader = {
        line = '<C-/>',
        block = '<C-S-/>'
    },
    mappings = { extra = false }
})

-- telescope
local builtin = require('telescope.builtin')
map('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
map('n', '<leader>ps', builtin.live_grep, { desc = 'Telescope live grep' })

-- oil (netrw alternative)
map('n', '<leader>pv', '<Cmd>Oil --float<CR>')
map("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })

-- barbar
map('n', '<C-p>', '<Cmd>BufferPin<CR>', opts)       -- pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPick<CR>', opts)      -- buffer pick mode
map('n', '<C-c>', '<Cmd>BufferClose<CR>', opts)     -- close buffer
map('n', '<C-S-x>', '<Cmd>:bd!<CR>')           -- force close buffer

map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)    -- go to buffer no x
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)      -- go to last buffer
