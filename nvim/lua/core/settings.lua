local options = {
    -- mapleader = " ",
    relativenumber = true,
    number = true,
    wrap = false,
    cursorline = true,
    mouse = "a",
    clipboard = "unnamedplus",
    termguicolors = true,

	tabstop = 4,
	softtabstop = 4,
	shiftwidth = 4,
	expandtab = true,

	hlsearch = false,
	incsearch = true,

	scrolloff = 8,
	sidescrolloff = 8,
	signcolumn = "yes",
}

vim.opt.shortmess:append "c"

-- highlight yanked text for 200ms using the "Visual" highlight group
vim.cmd[[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
augroup END
]]

-- let g:vimwiki_list = [{'path': '~/Documents/obsidian-sync/', 'syntax': 'markdown', 'ext': '.md'}]

for k, v in pairs(options) do
	vim.opt[k] = v
end
