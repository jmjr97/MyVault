local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local km = vim.api.nvim_set_keymap

-- Setup Leader
km("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Remove Dumb Stuff
km("n", "<F1>", [[<ESC>]], opts)
km("i", "<F1>", [[<ESC>]], opts)
km("n", "Q", "q", opts)
km("n", "q", "<Nop>", opts)

-- Centered 1/2 Page
km("n", "<C-d>", "<C-d>zz", opts)
km("n", "<C-u>", "<C-u>zz", opts)

-- Centered Search
km("n", "n", "nzzzv", opts)
km("n", "N", "Nzzzv", opts)

-- Window Navigation
km("n", "<C-h>", "<C-w>h", opts)
km("n", "<C-j>", "<C-w>j", opts)
km("n", "<C-k>", "<C-w>k", opts)
km("n", "<C-l>", "<C-w>l", opts)

-- Buffers
km("n", "<S-l>", ":bnext<CR>", opts)
km("n", "<S-h>", ":bprevious<CR>", opts)
km("n", "<leader>bb", ":bdelete<CR>", opts)
km("n", "<leader>bd", ":bdelete!<CR>", opts)

-- Indent Mode
km("v", "<", "<gv", opts)
km("v", ">", ">gv", opts)

-- Nvim-tree
km("n", "<leader>fe", ":NvimTreeToggle<CR>", opts)
km("n", "<leader>fa", ":NvimTreeFindFile<CR>", opts)

-- Telescope
km("n", "<leader>sf", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
km("n", "<leader>sF", "<cmd>Telescope find_files<cr>", opts)
km("n", "<leader>sg", "<cmd>Telescope live_grep<cr>", opts)
km("n", "<leader>sr", "<cmd>Telescope oldfiles<cr>", opts)
km("n", "<leader>sh", "<cmd>Telescope help_tags<cr>", opts)
