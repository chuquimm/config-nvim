-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim = vim
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use { "wbthomason/packer.nvim" } -- Packer can manage itself

  -- ui
  use { "bluz71/vim-nightfly-colors", as = "nightfly" } -- theme
  use { "nvim-lualine/lualine.nvim", requires = { "nvim-tree/nvim-web-devicons", opt = true } }
  use { "lewis6991/gitsigns.nvim" } -- show git changes
  use { "lukas-reineke/indent-blankline.nvim" }
  use { "nvim-treesitter/nvim-treesitter", run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  -- naviagation
  use { "nvim-telescope/telescope.nvim", branch = "0.1.x", requires = { "nvim-lua/plenary.nvim" } }
  use { "https://github.com/ThePrimeagen/harpoon" }

  use { "folke/which-key.nvim" } -- show keys suggestions
  use { "numToStr/Comment.nvim" }
  use { "tpope/vim-surround" }
  use { "windwp/nvim-autopairs" }
  use { "folke/todo-comments.nvim", requires = { "nvim-lua/plenary.nvim" } }
  use { "tpope/vim-fugitive" }
  use { "mbbill/undotree" }

  -- lsp
  use { "VonHeikemen/lsp-zero.nvim", branch = "v2.x",
    requires = {
      -- LSP Support
      {"neovim/nvim-lspconfig"},             -- Required
      {                                      -- Optional
        "williamboman/mason.nvim",
        run = function()
          pcall(vim.cmd, "MasonUpdate")
        end,
      },
      {"williamboman/mason-lspconfig.nvim"}, -- Optional

      -- Autocompletion
      {"hrsh7th/nvim-cmp"},     -- Required
      {"hrsh7th/cmp-nvim-lsp"}, -- Required
      {"L3MON4D3/LuaSnip"},     -- Required
      {"hrsh7th/cmp-path"},
      {"hrsh7th/cmp-buffer"},
      {"saadparwaiz1/cmp_luasnip"},
      {"rafamadriz/friendly-snippets"},
    }
  }

  use { "https://github.com/tpope/vim-rails" }

  use { "https://github.com/preservim/nerdtree",
    requires = {
      { "https://github.com/ryanoasis/vim-devicons" },
      -- { "https://github.com/tiagofumo/vim-nerdtree-syntax-highlight" },
      { "https://github.com/PhilRunninger/nerdtree-buffer-ops" },
      { "https://github.com/PhilRunninger/nerdtree-visual-selection" }
    }
  }

  -- use {'github/copilot.vim'}

end)
