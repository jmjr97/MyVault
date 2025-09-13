require('config.snacks-dashboard')

return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    dashboard = getDashboardConfig(),
    picker = {
			enabled = true,
			ui_select = true,
			hidden = true,
			exclude = {
				'.git',
				'.local',
				'.cache',
				'.dropbox',
				'.dropbox-dist',
				'.gnupg',
				'.npm',
				'.nv',
				'.pki',
				'.ssh',
				'.steam',
				'.themes',
				'/home/john/go',
				'.mozilla',
			},
		},
    indent = { enabled = true },
    input = { enabled = true },
    notifier = {
      enabled = true,
      timeout = 3000,
    },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  },
}
