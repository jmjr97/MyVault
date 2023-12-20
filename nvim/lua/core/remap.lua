-------------------------
-- NeoVim Remaps
-------------------------

vim.keymap.set('n', '<leader>fe', vim.cmd.NvimTreeToggle)
vim.keymap.set('n', '<leader>fa', vim.cmd.NvimTreeFindFile)

vim.keymap.set('n', '<leader>tt', vim.cmd.ToggleTerm)

vim.keymap.set('n', '<leader>lg', [[:silent execute '!$BROWSER ' . shellescape(expand('<cfile>'), 1)<CR>]], opts)

-- Remove F1 Help
vim.keymap.set('n', '<F1>', [[<ESC>]])
vim.keymap.set('i', '<F1>', [[<ESC>]])

-- Tabs
vim.keymap.set('n', '<leader>tp', vim.cmd.tabp)
vim.keymap.set('n', '<leader>tn', vim.cmd.tabn)
vim.keymap.set('n', '<leader>tc', vim.cmd.tabc)

-- Buffers
vim.keymap.set('n', '<leader>bp', vim.cmd.bp)
vim.keymap.set('n', '<leader>bn', vim.cmd.bn)
vim.keymap.set('n', '<leader>bd', vim.cmd.bdelete)

-- Paste but keep original yank
vim.keymap.set('x', '<leader>p', '\'_dP')

-- Delete but not copy
vim.keymap.set('x', '<leader>d', '\'_d')
vim.keymap.set('v', '<leader>d', '\'_d')

-- Yank to system clipboard
vim.keymap.set('n', '<leader>y', '\'_+y')
vim.keymap.set('v', '<leader>y', '\'_+y')
vim.keymap.set('n', '<leader>Y', '\'_+Y')

-- Highlight and move
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'J', 'mzJ`z')

-- 1/2 Page, stay centered
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Search, stay centered
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Insert line & stay in normal mode
vim.keymap.set('n', '<leader>o', 'o<esc>0"_D')
vim.keymap.set('n', '<leader>O', 'O<esc>0"_D')
