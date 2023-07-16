-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action
local mux = wezterm.mux

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Alabaster'
config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.font_size = 11
config.enable_scroll_bar = true
config.hide_tab_bar_if_only_one_tab = true
-- config.use_fancy_tab_bar = false
config.dpi = 144.0
config.window_padding = {
  left = 0,
  top = 0,
  bottom = 0,
}
config.window_decorations = "RESIZE"

config.keys = {}
for i = 1, 8 do
  -- ALT + number to activate that tab
  table.insert(config.keys, {
    key = tostring(i),
    mods = 'ALT',
    action = act.ActivateTab(i - 1),
  })
end

wezterm.on("gui-startup", function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

-- and finally, return the configuration to wezterm
return config
