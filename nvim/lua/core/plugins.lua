local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
        -- Plugin Manager
    use 'wbthomason/packer.nvim'
        -- Popup Terminal
    use 'akinsho/toggleterm.nvim'
        -- Harpoon
    use 'ThePrimeagen/harpoon'
        -- theme
    -- use 'navarasu/onedark.nvim'
    use({
    'NTBBloodbath/doom-one.nvim',
    setup = function()
        -- Add color to cursor
		vim.g.doom_one_cursor_coloring = false
		-- Set :terminal colors
		vim.g.doom_one_terminal_colors = true
		-- Enable italic comments
		vim.g.doom_one_italic_comments = false
		-- Enable TS support
		vim.g.doom_one_enable_treesitter = true
		-- Color whole diagnostic text or only underline
        vim.g.doom_one_diagnostics_text_color = false
		-- Enable transparent background
		vim.g.doom_one_transparent_background = false

        -- Pumblend transparency
		vim.g.doom_one_pumblend_enable = false
		vim.g.doom_one_pumblend_transparency = 20

        -- Plugins integration
		vim.g.doom_one_plugin_neorg = true
		vim.g.doom_one_plugin_barbar = false
		vim.g.doom_one_plugin_telescope = false
		vim.g.doom_one_plugin_neogit = true
		vim.g.doom_one_plugin_nvim_tree = true
		vim.g.doom_one_plugin_dashboard = true
		vim.g.doom_one_plugin_startify = true
		vim.g.doom_one_plugin_whichkey = true
		vim.g.doom_one_plugin_indent_blankline = true
		vim.g.doom_one_plugin_vim_illuminate = true
		vim.g.doom_one_plugin_lspsaga = false
	end,
	config = function()
        vim.cmd("colorscheme doom-one")
    end,
})
        -- vimwiki
    use 'vimwiki/vimwiki'
        -- Hex Colors
 --   use 'rrethy/vim-hexokinase'
    use 'norcalli/nvim-colorizer.lua'
        require'colorizer'.setup()
        -- Fuzzy Finder	
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
        -- File Explorer
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    require('toggleterm').setup{}
        -- Treesitter
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
        -- Dashboard 

    use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    }
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            -- Snippet Collection (Optional)
            {'rafamadriz/friendly-snippets'},
        }
    }

  -- My plugins here
  -- use 'foo2/bar2.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
 end
end)

