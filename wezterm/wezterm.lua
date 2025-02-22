local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 19

config.color_scheme = "Tokyo Night Moon"

config.window_background_opacity = 1
config.macos_window_background_blur = 10

config.macos_window_background_blur = 10
config.adjust_window_size_when_changing_font_size = false

return config
