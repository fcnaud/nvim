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
  }
})
