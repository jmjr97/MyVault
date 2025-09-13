return {
	'folke/noice.nvim',
	event = 'VeryLazy',
	opts = {},
	dependencies = {
		'MunifTanjim/nui.nvim',
		'rcarriga/nvim-notify',
	},
	config = function()
		require('noice').setup({
			presets = {
				bottom_search = false,
				command_palette = false,
				long_message_to_split = false,
				inc_rename = false,
			}
		})
	end
}
