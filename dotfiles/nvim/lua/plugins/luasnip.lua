return {
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp",
  config = function()
    local ls = require 'luasnip'
    local s = ls.snippet
    local t = ls.text_node
    local i = ls.insert_node
    local fmt = require('luasnip.extras.fmt').fmt

    ------------
    --- bash ---
    ------------

    ls.add_snippets('sh', {
      s('bang', {
        t('#!/usr/bin/bash')
      })
    })

    ----------
    --- go ---
    ----------

    ls.add_snippets('go', {
      s('clear',{
        t('fmt.Print("\033[H\033[2J")')
      })
    })

    ls.add_snippets('go', {
      s('iferr',{
        t({'if err != nil {', '  fmt.Println("Error:", err)', '  return', '}'})
      })
    })

    -----------
    --- lua ---
    -----------

    ls.add_snippets('lua', {
      s('testing', {
        t('print("hello world")')
      })
    })

    ------------
    --- rust ---
    ------------

    ls.add_snippets('rust', {
      s('rust', {
        t('#![allow(non_snake_case)]')
      })
    })

    ------------------
    --- javascript ---
    ------------------

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

    ------------
    --- HTML ---
    ------------

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
        ]], { i(1) }
      ))
    })

    ---------------
    --- desktop ---
    ---------------

    ls.add_snippets('desktop', {
      s('desktop', fmt(
        [[
        [Desktop Entry]

        Type=Application
        Name={}
        Exec=
        Terminal=false
        Categories=Utility;
        ]], { i(1) }
      ))
    })
  end,
}
