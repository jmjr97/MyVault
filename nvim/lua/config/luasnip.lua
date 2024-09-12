local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require('luasnip.extras.fmt').fmt

-- lua snippets

ls.add_snippets('lua', {
  s('testing', {
    t('print("hello world")')
  })
})

-- javascript snippets

ls.add_snippets('javascript', {
  s('bang', {
    t('#!/usr/bin/env node')
  }),

  s('print', {
    t("console.log('"),
    i(1),
    t("');")
  })
})

-- html snippets

ls.add_snippets('html', {
  s('doc', fmt(
    [[
    <!DOCTYPE html>
      <html lang='en'>
        <head>
          <meta charset='UTF-8'>
          <meta name='viewport' content='width=device-width, initial-scale=1'>
          <title>{}</title>
          <link href='style.css' rel='stylesheet'>
        </head>
        <body>
        
        </body>
      </html>
    ]], { i(1)}
  ))
})
