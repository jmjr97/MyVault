local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim"
    vim.cmd [[packadd packer.nvim]]
end

-- Auto reload plugins after saving this file
vim.cmd[[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Packer popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

-- Install plugins
return packer.startup(function(use)
    -- My plugins
    use "wbthomason/packer.nvim"
    use "nvim-lua/popup.nvim"
    use "nvim-lua/plenary.nvim"
    use "kyazdani42/nvim-web-devicons"
    use "kyazdani42/nvim-tree.lua"
    use "akinsho/bufferline.nvim"
    use "moll/vim-bbye"
    use "akinsho/toggleterm.nvim"
    use "norcalli/nvim-colorizer.lua"
    use 'goolord/alpha-nvim'

    -- CMP plugins
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "saadparwaiz1/cmp_luasnip"
    use "hrsh7th/cmp-nvim-lsp"

    -- Snippets
    use "L3MON4D3/LuaSnip"
    use "rafamadriz/friendly-snippets"

    -- LSP
    use "neovim/nvim-lspconfig"
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"

    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
    }

    -- Telescope
    use "nvim-telescope/telescope.nvim"
    use "nvim-telescope/telescope-media-files.nvim"

    -- Surround
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
            })
        end
    })

    -- Lualine
    use {
        "nvim-lualine/lualine.nvim",
        requires = { '"nvim-tree/nvim-web-devicons', opt = true }
    }

    -- Themes
    use "folke/tokyonight.nvim"
    use "lunarvim/darkplus.nvim"
    use "lunarvim/colorschemes"
    use "marko-cerovac/material.nvim"


    -- Automatically setup config after cloning packer.nvim
    -- Keep after all plugins if PACKER_BOOTSTRAP then
    if PACKER_BOOTSTRAP then
       require("packer").sync()
    end
end)
