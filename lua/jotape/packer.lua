-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use { "catppuccin/nvim", as = "catppuccin" }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end
        , }

    use('jose-elias-alvarez/null-ls.nvim') -- Use Neovim as a language server to inject LSP diagnostics, code actions and more via lua
    use('MunifTanjim/prettier.nvim')       -- Prettier plugin for Neovim's built-in LSP client

    use('nvim-treesitter/playground')
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use('neovim/nvim-lspconfig') -- LSP
    use('glepnir/lspsaga.nvim')  -- LSP UIs

    use('onsails/lspkind-nvim')  -- vscode-like pictograms
    use('hrsh7th/cmp-buffer')    -- nvim-cmp source for buffer words
    use('hrsh7th/cmp-nvim-lsp')  -- nvim-cmp source for neovim's built-in LSP
    use('hrsh7th/nvim-cmp')      -- Completion

    use('L3MON4D3/LuaSnip')

    use('williamboman/mason.nvim') -- Mason for LSP
    use('williamboman/mason-lspconfig.nvim')

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use { "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    }

    use('ThePrimeagen/vim-be-good')
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    } -- StatusLine

    use('windwp/nvim-autopairs')
    use('windwp/nvim-ts-autotag')

    use { 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons' }

    use('norcalli/nvim-colorizer.lua')

    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end } -- Toggle terminal

    use('lewis6991/gitsigns.nvim')
    use('dinhhuy258/git.nvim')  -- For git blame & browse
end)
