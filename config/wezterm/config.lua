-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- # --------------------------------------------------
config.color_scheme = "Jellybeans"

config.font = wezterm.font("Inconsolata")
config.font_size = 16

config.keys = {}

-- # --------------------------------------------------

-- and finally, return the configuration to wezterm
return config
