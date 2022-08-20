local wezterm = require("wezterm")

return {
  color_scheme = "Catppuccin Frappe",
  font = wezterm.font_with_fallback({
    "JetBrainsMono Nerd Font Mono",
    "JetBrainsMono NF",
    "monospace",
    "consolas",
  }),
  font_size = 13,
  hide_tab_bar_if_only_one_tab = true,
}
