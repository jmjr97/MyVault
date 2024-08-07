local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local km = vim.api.nvim_set_keymap

-- Remove F1 Help
km("n", "<F1>", [[<ESC>]], opts)
km("i", "<F1>", [[<ESC>]], opts)

-- Setup Leader
km("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

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

-- Splits
km("n", "<leader>sv", ":vs<CR>", opts)
km("n", "<leader>sh", ":horizontal split<CR>", opts)
km("n", "<leader>ss", "<C-w>x", opts)
km("n", "<leader>sq", "<C-w>q", opts)


-- Resize with Arrows
km("n", "<C-Up>", ":resize +2<CR>", opts)
km("n", "<C-Down>", ":resize -2<CR>", opts)
km("n", "<C-Left>", ":vertical resize -2<CR>", opts)
km("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate Buffers
km("n", "<S-l>", ":bnext<CR>", opts)
km("n", "<S-h>", ":bprevious<CR>", opts)
km("n", "<leader>bb", ":bdelete<CR>", opts)

-- Indent Mode
km("v", "<", "<gv", opts)
km("v", ">", ">gv", opts)

-- Nvim-tree
km("n", "<leader>fe", ":NvimTreeToggle<CR>", opts)
km("n", "<leader>fa", ":NvimTreeFindFile<CR>", opts)

-- Telescope
km("n", "<leader>ff", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
km("n", "<leader>fF", "<cmd>Telescope find_files<cr>", opts)
km("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
km("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", opts)

local wk = require("which-key")
wk.add({
    -- Buffer
    { "<leader>b", group = "Buffer" },
    { "<leader>bb", desc = "Close Buffer" },
    -- Find
    { "<leader>f", group = "Find" },
    { "<leader>fa", desc = "Tree Find File" },
    { "<leader>fe", desc = "Tree Toggle" },
    { "<leader>ff", desc = "File" },
    { "<leader>fF", desc = "File w/ Preview" },
    { "<leader>fg", desc = "Live Grep" },
    { "<leader>fr", desc = "Recent Files" },
    -- Split
    { "<leader>s", group = "Split" },
    { "<leader>sh", desc = "Horizontal" },
    { "<leader>sq", desc = "Close" },
    { "<leader>ss", desc = "Swap" },
    { "<leader>sv", desc = "Vertical" },
})

