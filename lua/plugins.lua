vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  -- file tree
  use {"kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons"}

  -- comment
  use {"numToStr/comment.nvim", tag = "v0.6", config = function ()
    require('Comment').setup(require('keymap').comment)
  end}

  -- buffer line
 use {'akinsho/bufferline.nvim', tag = "*", requires = 'kyazdani42/nvim-web-devicons'}

  -- state line
  use {
    "nvim-lualine/lualine.nvim",
    requires = {"kyazdani42/nvim-web-devicons", opt = true}
  }

  -- indent line
  use {"lukas-reineke/indent-blankline.nvim"}

  use {
    "glepnir/galaxyline.nvim",
   -- your statusline
    config = function()
      require("galaxyline.themes.eviline")
    end,
    -- some optional icons
    requires = {"kyazdani42/nvim-web-devicons", opt = true}
  }

  -- telescope search
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"
  use {"nvim-telescope/telescope.nvim", requires = {{"nvim-lua/plenary.nvim"}}}

  -- treesitter
  use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}

  -- git
  use {"lewis6991/gitsigns.nvim", requires = {"nvim-lua/plenary.nvim"}}

  use {"mhartington/formatter.nvim"}

  -- terminal
  use 'voldikss/vim-floaterm'

  -- markdown
  -- need install yarn
  use {
    -- 原项目
    -- 'iamcco/markdown-preview.nvim',
    'fcnaud/markdown-preview.nvim',
    run = 'cd app && yarn install',
    setup = function()
      vim.g.mkdp_filetypes = {"markdown"}
      -- vim.g.mkdp_browser = "edge"
      vim.g.mkdp_open_to_the_world = 1
    end,
    ft = {"markdown"}
  }

  --------------------------- lsp config ------------------------------------ 
  use {'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer'}
  -- nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer' -- { name = 'buffer' },
  use 'hrsh7th/cmp-path' -- { name = 'path' }
  use 'hrsh7th/cmp-cmdline' -- { name = 'cmdline' }
  -- vsnip
  use 'hrsh7th/cmp-vsnip' -- { name = 'vsnip' }
  use 'hrsh7th/vim-vsnip'
  -- use 'rafamadriz/friendly-snippets'
  -- lspkind
  use 'onsails/lspkind-nvim'

  --------------------------- colorscheme ------------------------------------

  -- gruvbox
  use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
  -- zephyr
  -- use "glepnir/zephyr-nvim"
  use "fcnaud/zephyr-nvim"
  -- nord
  use "shaunsingh/nord.nvim"
  -- onedark
  use "ful1e5/onedark.nvim"
end)
