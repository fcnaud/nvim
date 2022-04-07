" load config
lua require("basic")
lua require("keymap")
lua require("plugins")
lua require("lsp/setup")
lua require("lsp/nvim-cmp")

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
lua require('plugin-config/indent_blankline')
lua require('plugin-config/formatter')

" 暂时没找到 neovim 中找到配置方式的
nmap <space> :

filetype plugin indent on
autocmd FileType lua setlocal shiftwidth=2 softtabstop=2 shiftwidth=2 expandtab

" vim keymap
autocmd FileType ruby nnoremap <buffer> <F5> :FloatermNew --autoclose=0 ruby %<CR>
