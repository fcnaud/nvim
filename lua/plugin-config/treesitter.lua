require'nvim-treesitter.configs'.setup {
  -- support language
  ensure_installed = {
    'vim', 
    'lua', 
    'ruby', 
    'c', 
    'bash', 
    'fish'
  },
  -- enable highlight
  highlight = {enable = true, additional_vim_regex_highlighting = false},
  indent = {enable = true}
}

-- 开启 Folding
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
-- 默认不要折叠
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
vim.wo.foldlevel = 99
