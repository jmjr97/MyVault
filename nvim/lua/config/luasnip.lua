local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

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
