return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  -- file tree
  use {"kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons"}

  -- comment
  use {"numToStr/comment.nvim"}

  -- buffer line
  use {"akinsho/bufferline.nvim", requires = "kyazdani42/nvim-web-devicons"}

  -- state line
  use {
    "nvim-lualine/lualine.nvim",
    requires = {"kyazdani42/nvim-web-devicons", opt = true}
  }

  -- indent line
  use {"lukas-reineke/indent-blankline.nvim"}

  use {
    "glepnir/galaxyline.nvim",
    branch = "main",
    -- your statusline
    config = function() require "plugin-config/eviline" end,
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

  --------------------------- colorscheme ------------------------------------

  -- gruvbox
  use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
  -- zephyr
  use "glepnir/zephyr-nvim"
  -- nord
  use "shaunsingh/nord.nvim"
  -- onedark
  use "ful1e5/onedark.nvim"
end)
