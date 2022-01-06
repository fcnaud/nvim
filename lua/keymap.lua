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

-- packer
map("n", "<leader>ps", ":PackerSync<CR>", opt)

-- markdown preview
map("n", "<leader>mp", ":MarkdownPreview<CR>", opt)

-- lsp keymap
pluginKeys.maplsp = function(mapbuf)
  -- rename
  mapbuf('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opt)
  -- code action
  mapbuf('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opt)
  -- go xx
  mapbuf('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opt)
  mapbuf('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opt)
  mapbuf('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opt)
  mapbuf('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opt)
  mapbuf('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opt)
  -- diagnostic
  mapbuf('n', 'go', '<cmd>lua vim.diagnostic.open_float()<CR>', opt)
  mapbuf('n', 'gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opt)
  mapbuf('n', 'gn', '<cmd>lua vim.diagnostic.goto_next()<CR>', opt)
  -- mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
  -- leader + =
  mapbuf('n', '<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>', opt)
  -- mapbuf('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opt)
  -- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
  -- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt) 
end

pluginKeys.cmp = function(cmp)
  return {
    -- 上一个
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    -- 下一个
    ['<C-j>'] = cmp.mapping.select_next_item(),
    -- 出现补全
    ['<A-.>'] = cmp.mapping(cmp.mapping.complete(), {'i', 'c'}),
    -- 取消
    ['<A-,>'] = cmp.mapping({i = cmp.mapping.abort(), c = cmp.mapping.close()}),
    -- 确认
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ['<Tab>'] = cmp.mapping.confirm({
      select = true,
      behavior = cmp.ConfirmBehavior.Replace
    }),
    -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), {'i', 'c'}),
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), {'i', 'c'})
  }
end

return pluginKeys
