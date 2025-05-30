return { 
	"williamboman/mason-lspconfig.nvim",
    {
			"hrsh7th/nvim-cmp",
			dependencies = {
					'hrsh7th/cmp-nvim-lsp',
					'hrsh7th/cmp-buffer',
					'hrsh7th/cmp-path',
					'hrsh7th/cmp-cmdline',
					'L3MON4D3/LuaSnip',
					'saadparwaiz1/cmp_luasnip',
					'hrsh7th/cmp-vsnip',
					'hrsh7th/vim-vsnip',
					'rafamadriz/friendly-snippets',
			}
    },

config = function()

	vim.lsp.enable('lua_ls')
	vim.lsp.enable('html')
	vim.lsp.enable('cssls')
	vim.lsp.enable('tailwindcss')
	vim.lsp.enable('pyright')
	vim.lsp.enable('gopls')
	-- vim.lsp.enable('rust_analyzer')

	-- import cmp-nvim-lsp plugin
	local cmp_nvim_lsp = require("cmp_nvim_lsp")

	local capabilities = require('cmp_nvim_lsp').default_capabilities()
	vim.lsp.config('*', {
			capabilities = capabilities,
	})

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
	vim.api.nvim_create_autocmd('LspAttach', {
			group = vim.api.nvim_create_augroup('UserLspConfig', {}),
			callback = function(ev)
					local map = function(keys, func, desc)
							vim.keymap.set('n', keys, func, { buffer = ev.buf, desc = 'Lsp: ' .. desc })
					end

					local tele = require("telescope.builtin")
					map('gd', tele.lsp_definitions, 'Goto Definition')
					map('<leader>ls', tele.lsp_document_symbols, 'Doc Symbols')
					map('<leader>lS', tele.lsp_dynamic_workspace_symbols, 'Dynamic Symbols')
					map('<leader>lt', tele.lsp_type_definitions, 'Goto Type')
					map('<leader>lr', tele.lsp_references, 'Goto References')
					map('<leader>li', tele.lsp_implementations, 'Goto Impl')

					map('K', vim.lsp.buf.hover, 'hover')
					map('<leader>le', vim.diagnostic.open_float, 'diagnostic')
					map('<leader>lk', vim.lsp.buf.signature_help, 'sig help')
					map('<leader>ln', vim.lsp.buf.rename, 'rename')
					map('<leader>la', vim.lsp.buf.code_action, 'code action')
					map('<leader>lf', vim.lsp.buf.format, 'format')

					vim.keymap.set('v',
							'<leader>la',
							vim.lsp.buf.code_action, { buffer = ev.buf, desc = 'Lsp: code_action' })
			end,
	})
end
}
