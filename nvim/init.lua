require "core.settings"
require "core.keymaps"
require "core.plugins"
require "core.configs"

-- let wiki_1 = {}
-- let wiki_1.path = '~/Documents/obsidian-sync/'

vim.g.vimwiki_list = {{path = '~/Documents/obsidian-sync/', syntax = 'markdown', ext = '.md', index = 'readme'}}

vim.cmd "colorscheme tokyonight-night"
