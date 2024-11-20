local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require('luasnip.extras.fmt').fmt

-- bash

ls.add_snippets('sh', {
  s('bang', {
    t('#!/bin/bash')
  })
})

-- lua snippets

ls.add_snippets('lua', {
  s('testing', {
    t('print("hello world")')
  })
})

-- rust snippets

ls.add_snippets('rust', {
  s('rust', {
    t('#![allow(non_snake_case)]')
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
    <!doctype html>
      <html lang='en'>
        <head>
          <meta charset='utf-8'>
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

-- desktop template

ls.add_snippets('desktop', {
  s('desktop', fmt(
    [[
    [Desktop Entry]

    Type=Application
    Version=1.0
    Name={}
    Comment=
    Exec=
    Terminal=false
    Categories=Education;
    ]], { i(1)}
  ))
})
