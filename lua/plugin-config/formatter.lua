require('formatter').setup({
  filetype = {
    lua = {
      -- luafmt
      -- npm install -g lua-fmt
      function()
        return {
          exe = "luafmt",
          args = {"--indent-count", 2, "--stdin"},
          stdin = true
        }
      end
    },

    lua = {
      -- lua-format
      function()
        return {
          exe = "lua-format", 
          args = {"--indent-width", 2}, 
          stdin = true
        }
      end
    }
  }
})
