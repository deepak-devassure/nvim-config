-- Set Leader Key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' ' 

-- Disable the spacebar key's default behaviour in Normal and Visual Modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- For Consiceness
local opts = { noremap = true, silent = true }

-- save file
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

-- Save file without auto-formatting
vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', opts)

-- quit file
vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', opts)

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x', opts)

-- vertical scroll and center
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-d>', '<C-u>zz', opts)

-- Find and center
vim.keymap.set('n', 'n', 'nzzv', opts)
vim.keymap.set('n', 'N', 'Nzzv', opts)

-- Resize with arrrows
vim.keymap.set('n', '<S-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<S-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<S-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<S-Right>', ':vertical resize +2<CR>', opts)

-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>x', ':Bdelete!<CR>', opts) -- Close buffers
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts) -- New Buffer

-- Window Management
vim.keymap.set('n', '<leader>v', '<C-w>v', opts) -- Split Window vertically
vim.keymap.set('n', '<leader>h', '<C-w>s', opts) -- Split Window horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=', opts) -- Make Split equal size
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts) -- Close the Split

-- Navigating between the splits
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

-- Tabs
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts) -- Open new tab
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', opts) -- Close current tab
vim.keymap.set('n', '<leader>tn', ':tabn<CR>', opts) -- Goto Next tab
vim.keymap.set('n', '<leader>tp', ':tabp<CR>', opts) -- Goto Previous Tab

-- Toggle line wrapping
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Keep last yanked while pasting
vim.keymap.set('v', 'p', '"_dP', opts)

-- Diagnostic Keymaps

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

