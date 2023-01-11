local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.setup()

-- local cmp = require('cmp')
-- cmp.setup({
--     mapping = cmp.mapping.preset.insert({
--         ['<C-k>'] = cmp.mapping.scroll_docs(-4),
--         ['<C-j>'] = cmp.mapping.scroll_docs(4),
--         ['<C-Space>'] = cmp.mapping.complete(),
--         ['<CR>'] = cmp.mapping.confirm({ select = true }),
--     })
-- })
