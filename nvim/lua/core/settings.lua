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

for k, v in pairs(options) do
	vim.opt[k] = v
end
