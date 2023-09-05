-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

config.window_background_opacity = 0.75
-- config.text_background_opacity = 0.3

config.keys = {
    { key = '.', mods = 'CMD|ALT', action = wezterm.action.HideApplication },
    { key = 'd', mods = 'CMD', action = wezterm.action.SplitHorizontal {domain="CurrentPaneDomain"} },
    { key = 'd', mods = 'CMD|SHIFT', action = wezterm.action.SplitVertical {domain="CurrentPaneDomain"} },
}

config.font_size = 18


-- and finally, return the configuration to wezterm
return config
