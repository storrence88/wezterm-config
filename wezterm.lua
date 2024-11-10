-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()
local act = wezterm.action

-- This is where you actually apply your config choices
-- config.font = wezterm.font("MesloLGS Nerd Font Mono")

config.font_size = 14
config.animation_fps = 30
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.default_cursor_style = "BlinkingBlock"
config.font = wezterm.font("JetBrains Mono")
config.color_scheme = "tokyonight_night"
config.window_close_confirmation = "NeverPrompt"
config.keys = {
	-- Clears the scrollback and viewport leaving the prompt line the new first line.
	{ key = "k", mods = "CMD", action = act.ClearScrollback("ScrollbackAndViewport") },
}

return config
