-- https://github.com/kyazdani42/nvim-tree.lua
require'nvim-tree'.setup {
  -- 关闭文件时自动关闭
  auto_close = true,
  git = {enable = true, ignore = false},
  view = {width = 30, auto_resize = true, size = 'left'}
}
