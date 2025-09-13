local options = {
	relativenumber = true,
	number = true,
	wrap = false,
	cursorline = true,
	mouse = "a",
	clipboard = "unnamedplus",
	termguicolors = true,

	tabstop = 2,
	softtabstop = 2,
	shiftwidth = 2,
	expandtab = false,
  autoindent = true,

  undofile = true,

	hlsearch = false,
	incsearch = true,

	scrolloff = 8,
	sidescrolloff = 8,
	signcolumn = "yes",
}

vim.treesitter.language.register('markdown', 'vimwiki')
vim.g.python_recommended_style = 0
vim.opt.shortmess:append "c"
vim.diagnostic.config({ virtual_text = true })

vim.cmd[[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
augroup END
]]

for k, v in pairs(options) do
	vim.opt[k] = v
end
