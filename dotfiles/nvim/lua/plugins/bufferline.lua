return {
  'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require("bufferline").setup{
      options = {
        mode = "buffers",
        show_buffer_close_icons = false,
        show_close_icon = false,
        always_show_bufferline = false,
        separator_style = "slant",
        offsets = {
          {
            filetype = "NvimTree",
            text = "",
            highlight = "Directory",
            separator = true,
          },
        },
      }
    }
  end,
}
