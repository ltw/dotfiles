-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

-- # --------------------------------------------------
config.color_scheme = "Jellybeans"

config.font = wezterm.font("Inconsolata")
config.font_size = 18

config.keys = {
	{
		key = "k",
		mods = "SUPER",
		action = act.ClearScrollback("ScrollbackAndViewport"),
	},
}

config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.window_decorations = "NONE"

-- # --------------------------------------------------

-- and finally, return the configuration to wezterm
return config
