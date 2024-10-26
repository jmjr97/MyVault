-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Look and Feel
config.color_scheme = "Catppuccin Macchiato"
config.font = wezterm.font('Hack Nerd Font')
config.font_size = 13
config.enable_tab_bar = false
config.window_padding = {
  left = 5,
  right = 5,
  top = 2,
  bottom = 2,
}

-- Keybinds
config.disable_default_key_bindings = true
config.leader = { key = ';', mods = 'CTRL', timeout_milliseconds = 1000 }
config.keys = {
  {
    key = 's',
    mods = 'LEADER',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'd',
    mods = 'LEADER',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'f',
    mods = 'LEADER',
    action = wezterm.action.TogglePaneZoomState,
  },
  {
    key = 'h',
    mods = 'ALT',
    action = wezterm.action{ActivatePaneDirection = "Left"},
  },
  {
    key = 'j',
    mods = 'ALT',
    action = wezterm.action{ActivatePaneDirection = "Down"},
  },
  {
    key = 'k',
    mods = 'ALT',
    action = wezterm.action{ActivatePaneDirection = "Up"},
  },
  {
    key = 'l',
    mods = 'ALT',
    action = wezterm.action{ActivatePaneDirection = "Right"},
  },
  {
    key = 'q',
    mods = 'LEADER',
    action = wezterm.action.CloseCurrentPane{confirm=true},
  },
}

return config
