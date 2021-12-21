return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  use {
      'numToStr/comment.nvim',
  }

  use {
      'akinsho/bufferline.nvim', 
      requires = 'kyazdani42/nvim-web-devicons'
  }

  --------------------------- colorscheme ------------------------------------

  -- gruvbox
  use {
    "ellisonleao/gruvbox.nvim",
    requires = {"rktjmp/lush.nvim"}
  }
  -- zephyr
  use 'glepnir/zephyr-nvim'
  -- nord
  use 'shaunsingh/nord.nvim'
  -- onedark
  use 'ful1e5/onedark.nvim'

end)
