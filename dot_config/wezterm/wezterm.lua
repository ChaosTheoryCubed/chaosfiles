local wezterm = require 'wezterm'
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = 'Catppuccin Mocha'
config.font = wezterm.font "Cartograph CF"
config.font_size = 16.0

config.enable_tab_bar = false

return config
