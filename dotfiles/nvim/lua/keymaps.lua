local opts = { noremap = true, silent = true }
local km = vim.api.nvim_set_keymap

-- Setup Leader
km("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Insert Move Movement
km("i", "<C-k>", [[<Up>]], opts)
km("i", "<C-j>", [[<Down>]], opts)
km("i", "<C-h>", [[<Left>]], opts)
km("i", "<C-l>", [[<Right>]], opts)

-- Remove Dumb Stuff
km("n", "<F1>", [[<ESC>]], opts)
km("i", "<F1>", [[<ESC>]], opts)
km("n", "Q", "q", opts)
km("n", "q", "<Nop>", opts)

-- Remap redo
km("n", "U", ":redo<CR>", opts)
km("n", "<C-r>", "<Nop>", opts)

-- Centered 1/2 Page
km("n", "<C-d>", "<C-d>zz", opts)
km("n", "<C-u>", "<C-u>zz", opts)

-- Centered Search
km("n", "n", "nzzzv", opts)
km("n", "N", "Nzzzv", opts)

-- Visual Move
km("v", "J", ":m '>+1<CR>gv=gv", opts)
km("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Paste No Copy
km("x", "<C-p>", "\"_dP", opts)

-- Window Navigation
km("n", "<C-h>", "<C-w>h", opts)
km("n", "<C-j>", "<C-w>j", opts)
km("n", "<C-k>", "<C-w>k", opts)
km("n", "<C-l>", "<C-w>l", opts)

-- Terminal Navigation
-- km("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
km("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
km("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
-- km("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)

-- Buffers
km("n", "<S-l>", ":bnext<CR>", opts)
km("n", "<S-h>", ":bprevious<CR>", opts)
km("n", "<leader>bb", ":bdelete<CR>", opts)
km("n", "<leader>bd", ":bdelete!<CR>", opts)

-- Indent Mode
km("v", "<", "<gv", opts)
km("v", ">", ">gv", opts)

-- Yank to Clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], opts)
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]], opts)

-- Noice
km("n", "<leader>d", ":Noice dismiss<CR>", opts)

-- Oil
km("n", "-", "<CMD>Oil --float<CR>", opts)

-- Obsidian
km("n", "<leader>oh", ":e ~/Documents/obsidian-sync/readme.md<CR>", opts)
km("n", "<leader>ot", ":ObsidianTOC<CR>", opts)
km("n", "<leader>on", ":ObsidianNew<CR>", opts)
km("n", "<leader>og", ":ObsidianSearch<CR>", opts)
km("n", "<leader>os", ":ObsidianQuickSwitch<CR>", opts)

-- Maximizer
km("n", "<leader>m", ":MaximizerToggle<CR>", opts)

-- Telescope
km("n", "<leader>ff", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
km("n", "<leader>fF", "<cmd>Telescope find_files<cr>", opts)
km("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
km("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", opts)
km("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)
