local opts = { noremap = true, silent = true }
local km = vim.api.nvim_set_keymap

km("n", "<Tab>", ":VimwikiNextLink<CR>", opts)
km("n", "<S-Tab>", ":VimwikiPrevLink<CR>", opts)
