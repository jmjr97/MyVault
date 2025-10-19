return {
	{
		'williamboman/mason.nvim',
		config = function()
			require('mason').setup()
		end
	},
	{
		'williamboman/mason-lspconfig.nvim',
		config = function()
			require('mason-lspconfig').setup({
				ensure_installed = {
					'lua_ls',
					'ts_ls',
					'html',
					'cssls',
					'pyright',
					'gopls',
				},
			})
		end
	},
	{
		'neovim/nvim-lspconfig',
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()

			vim.lsp.config('lua_ls', {
			-- local lspconfig = rsquire('lspconfig')
				capabilities = capabilities,
			})
			vim.lsp.enable({'lua_ls'})
			vim.lsp.config('ts_ls', {
				capabilities = capabilities,
			})
			vim.lsp.enable({'ts_ls'})
			vim.lsp.config('html', {
				capabilities = capabilities,
			})
			vim.lsp.config('cssls', {
				capabilities = capabilities,
			})
			vim.lsp.enable({'cssls'})
			vim.lsp.config('pyright', {
				capabilities = capabilities,
			})
			vim.lsp.enable({'pyright'})
			vim.lsp.config('gopls', {
				capabilities = capabilities,
			})
			vim.lsp.enable({'gopls'})

			vim.keymap.set('n', '<leader>lk', vim.lsp.buf.hover, {})
			vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, {})
			vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action, {})
		end
	}
}
