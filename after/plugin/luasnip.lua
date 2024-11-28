local luasnip = require('luasnip')
local snippet = luasnip.snippet
local text = luasnip.text_node
local insert = luasnip.insert_node

luasnip.add_snippets("javascript", {
    snippet("cl", {
        text("console.log()")
    })
})

luasnip.add_snippets(nil, {
  astro = {
    luasnip.snippet("cl", {
      luasnip.text_node("console.log()")
    }),
  },
})
luasnip.add_snippets(nil, {
  javascriptreact = {
    luasnip.snippet("cl", {
      luasnip.text_node("console.log()")
    }),
  },
})
luasnip.add_snippets("javascript", {
    snippet("br", {
        text("border-2 border-red-500")
    })
})

luasnip.add_snippets(nil, {
  -- Add it specifically for certain languages as well
  html = {
    luasnip.snippet("br", {
      luasnip.text_node("border-2 border-red-500")
    }),
  },
  astro = {
    luasnip.snippet("br", {
      luasnip.text_node("border-2 border-red-500")
    }),
  },
  javascriptreact = {
    luasnip.snippet("br", {
      luasnip.text_node("border-2 border-red-500")
    }),
  },
})
luasnip.add_snippets(nil, {
  -- Add it specifically for certain languages as well
  html = {
    luasnip.snippet("bb", {
      luasnip.text_node("border-2 border-blue-500")
    }),
  },
  astro = {
    luasnip.snippet("bb", {
      luasnip.text_node("border-2 border-blue-500")
    }),
  },
  javascriptreact = {
    luasnip.snippet("bb", {
      luasnip.text_node("border-2 border-blue-500")
    }),
  },
})
