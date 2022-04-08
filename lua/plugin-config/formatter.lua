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
    },

    ruby = {
       -- rubocop
       function()
         return {
           exe = "rubocop", -- might prepend `bundle exec `
           args = { '--auto-correct', '--stdin', '%:p', '2>/dev/null', '|', "awk 'f; /^====================$/{f=1}'"},
           stdin = true,
         }
       end
     }
  }
})
