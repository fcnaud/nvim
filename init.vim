" load config
lua require("basic")
lua require("keymap")
lua require("plugins")

" theme
set background=light " or light if you want light mode
colorscheme zephyr

" plugin config
lua require('plugin-config/bufferline')
lua require('plugin-config/comment')
lua require('plugin-config/nvim-tree')
" lua require('plugin-config/lualine')
lua require('plugin-config/telescope')
lua require('plugin-config/treesitter')
lua require('plugin-config/gitsigns')

" 暂时没找到 neovim 中找到配置方式的
nmap <space> :

