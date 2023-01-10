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
vim.keymap.set('n', '<C-h>', vim.cmd.tabp)
vim.keymap.set('n', '<C-l>', vim.cmd.tabn)
vim.keymap.set('n', '<C-x>', vim.cmd.tabc)

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


