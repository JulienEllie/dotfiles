local wezterm = require("wezterm")

local config = wezterm.config_builder()
config.front_end = "WebGpu" -- uses Metal on macOS
config.window_background_opacity = 0.80
config.macos_window_background_blur = 30
config.color_scheme = "Catppuccin Mocha"

config.keys = {
	-- Cmd + LeftArrow to move to start of line
	{ key = "LeftArrow", mods = "CMD", action = wezterm.action.SendString("\x1bOH") },
	-- Cmd + RightArrow to move to end of line
	{ key = "RightArrow", mods = "CMD", action = wezterm.action.SendString("\x1bOF") },
}

return config
