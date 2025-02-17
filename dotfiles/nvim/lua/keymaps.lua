local opts = { noremap = true, silent = true }
local km = vim.api.nvim_set_keymap

-------------------
-- House Keeping --
-------------------

km("n", "-", ':lua MiniFiles.open()<CR>', opts)

-- Setup Leader
km("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Remove Dumb Stuff
km("n", "<F1>", [[<ESC>]], opts)
km("i", "<F1>", [[<ESC>]], opts)
km("n", "Q", "q", opts)
km("n", "q", "<Nop>", opts)

-- Remap redo
km("n", "U", ":redo<CR>", opts)
km("n", "<C-r>", "<Nop>", opts)

-- Noice
km("n", "<leader>d", ":Noice dismiss<CR>", opts)

-- Maximizer
km("n", "<leader>m", ":MaximizerToggle<CR>", opts)

------------------
---- Movement ----
------------------

-- Insert Move Movement
km("i", "<C-k>", [[<Up>]], opts)
km("i", "<C-j>", [[<Down>]], opts)
km("i", "<C-h>", [[<Left>]], opts)
km("i", "<C-l>", [[<Right>]], opts)

-- Window Navigation
km("n", "<C-h>", "<C-w>h", opts)
km("n", "<C-j>", "<C-w>j", opts)
km("n", "<C-k>", "<C-w>k", opts)
km("n", "<C-l>", "<C-w>l", opts)

-- Terminal Navigation
km("t", "<C-n>", [[<C-\><C-n>]], opts)
km("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
km("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)

-- Buffers
km("n", "<S-l>", ":bnext<CR>", opts)
km("n", "<S-h>", ":bprevious<CR>", opts)
km("n", "<leader>bb", ":bdelete<CR>", opts)
km("n", "<leader>bd", ":bdelete!<CR>", opts)

-- Centered 1/2 Page
km("n", "<C-d>", "<C-d>zz", opts)
km("n", "<C-u>", "<C-u>zz", opts)

-- Centered Search
km("n", "n", "nzzzv", opts)
km("n", "N", "Nzzzv", opts)

---------------------------
---- Text Manipulation ----
---------------------------

-- Visual Move
km("v", "J", ":m '>+1<CR>gv=gv", opts)
km("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Paste No Copy
km("x", "<C-p>", "\"_dP", opts)

-- Indent Mode
km("v", "<", "<gv", opts)
km("v", ">", ">gv", opts)

-- Yank to Clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], opts)
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]], opts)

-------------------------
---- File Management ----
-------------------------

-- Oil
-- km("n", "!", "<CMD>Oil --float<CR>", opts)

-- Telescope
km("n", "<leader>ff", "<cmd>Telescope find_files theme=ivy<cr>", opts)
km("n", "<leader>fa", "<cmd>Telescope find_files cwd=~/ theme=ivy prompt_title=All-Files<cr>", opts)
km("n", "<leader>fb", "<cmd>Telescope buffers theme=dropdown preview=false<cr><escape>", opts)
km("n", "<leader>fg", "<cmd>Telescope live_grep theme=ivy<cr>", opts)
km("n", "<leader>fh", "<cmd>Telescope help_tags theme=ivy<cr>", opts)
km("n", "<leader>fm", "<cmd>Telescope marks theme=dropdown<cr><escape>", opts)
km("n", "<leader>fo", "<cmd>Telescope find_files cwd=~/Documents/obsidian-sync/ theme=ivy prompt_title=Notes<cr>", opts)
km("n", "<leader>fr", "<cmd>Telescope oldfiles theme=ivy<cr>", opts)
km("n", "<leader>fs", "<cmd>Telescope git_status theme=ivy<cr>", opts)

--------------
---- Code ----
--------------
-- Run Code
km("n", "<leader>rp", "<cmd>TermExec cmd='python %'<CR>:wincmd j<CR>:sleep 1<CR>:start<CR>", opts) -- Python
km("n", "<leader>rl", "<cmd>TermExec cmd='lua %'<CR>:wincmd j<CR>:sleep 1<CR>:start<CR>", opts) -- Python
km("n", "<leader>rr", "<cmd>TermExec dir=%:p:h cmd='cargo run'<CR>:wincmd j<CR>:sleep 1<CR>:start<CR>", opts) -- Rust
km("n", "<leader>rg", "<cmd>TermExec dir=%:p cmd='go run %'<CR>:wincmd j<CR>:sleep 1<CR>:start<CR>", opts) -- Go
km("n", "<leader>rs", "<cmd>TermExec dir=%:p:h cmd='sh %'<CR>:wincmd j<CR>:sleep 1<CR>:start<CR>", opts) -- Bash
