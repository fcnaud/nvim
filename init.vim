lua require("basic")
lua require("keymap")
lua require("plugins")

set background=light " or light if you want light mode
colorscheme zephyr

" setup plugin
lua require('plugin-config/bufferline')
lua require('plugin-config/comment')
lua require('plugin-config/nvim-tree')
lua require('plugin-config/lualine')
lua require('plugin-config/telescope')

