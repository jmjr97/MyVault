require('render-markdown').setup({
  anti_conceal = { enabled = false },
  code = {
    enabled = true,
    sign = true,
    style = 'full',
    position = 'left',
    language_pad = 0,
    language_name = true,
    disable_background = { 'diff' },
    width = 'full',
    left_margin = 0,
    left_pad = 0,
    right_pad = 0,
    min_width = 0,
    border = 'thin',
    above = '▄',
    below = '▀',
    highlight = 'RenderMarkdownCode',
    highlight_inline = 'RenderMarkdownCodeInline',
    highlight_language = nil,
  },
  win_options = {
    conceallevel = {
      default = vim.api.nvim_get_option_value('conceallevel', {}),
      rendered = 2,
    },
  },
  file_types = {
    'markdown',
    'vimwiki',
  },
})
