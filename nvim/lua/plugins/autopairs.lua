return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  config = true,
  -- use opts = {} for passing setup options
  -- this is equivalent to setup({}) function
  opts = {
    disable_filetype = { "TelescopePrompt" },
    disable_in_macro = true,
    disable_in_visualblock = false,
    disable_in_replace_mode = true,

    fast_wrap = {
      map = "<C-;>",
      chars = { '{', '[', '(', '"', "'" },
      offset = 0,
      end_key = '$',
      keys = 'asdfghjkl;',
      check_comma = true,
      highlight = 'PmenuSel',
      highlight_grey = 'LineNr',
    },

  },
}


