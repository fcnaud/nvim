vim.g.mapleader = ","
vim.g.maplocalleader = ","

local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}
local pluginKeys = {}

-- key map
map("i", "jk", "<esc>", opt)

-- edit file
map("n", "<leader>ec", ":edit $MYVIMRC<cr>", opt)
map("n", "<leader>w", ":w <cr>", opt)
map("n", "<leader>q", ":q <cr>", opt)
map("i", "<C-s>", "<C-o>:w <cr>", opt)
map("n", "<C-s>", ":w <cr>", opt)

-- bufferline 左右Tab切换
map("n", "<A-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<A-l>", ":BufferLineCycleNext<CR>", opt)
map("n", "<A-w>", ":bd<CR>", opt)
map("n", "<C-w>", ":bd<CR>", opt)

-- size
map("n", "<C-up>", ":vertical resize +5<cr>", opt)
map("n", "<C-down>", ":vertical resize -5<cr>", opt)
map("n", "<A-up>", ":resize +2<cr>", opt)
map("n", "<A-down>", ":resize -2<cr>", opt)

-- alt + hjkl  窗口之间跳转
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)

-- plugin comment
pluginKeys.comment = {
  toggler = {line = "gcc", block = "gbc"},
  opleader = {line = "gc", block = "gb"}
}
-- ctrl + /
map("n", "<C-_>", "gcc", {noremap = false})
map("v", "<C-_>", "gc", {noremap = false})

-- nvim-tree
map("n", "<leader>tt", ":NvimTreeToggle<cr>", opt)

-- telescope
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
-- map("n", "<leader>f", ":Telescope find_files<CR>", opt)
map("n", "<leader>g", ":Telescope live_grep<CR>", opt)

-- formatter
map("n", "<leader>f", ":Format<CR>", opt)

return pluginKeys
