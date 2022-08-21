local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local config_home = os.getenv("XDG_CONFIG_HOME") or "~/.config"
local themes_path = config_home .. "/awesome/themes"

local theme = {}

theme.font = "sans 10"

theme.useless_gap = 4
theme.border_width = 1

theme.black = "#1e1e28"
theme.deep_black = "#1b1923"
theme.white = "#d7dae0"
theme.light_white = "#fafafa"
theme.pink = "#f0afe1"
theme.red = "#e28c8c"
theme.orange = "#f9c096"
theme.yellow = "#eadda0"
theme.green = "#b3e1a3"
theme.blue = "#a4b9ef"
theme.purple = "#c6aae8"
theme.grey = "#6e6c7c"

theme.bg_normal = theme.black
theme.bg_focus = theme.deep_black
theme.bg_urgent = theme.white
theme.bg_minimize = theme.grey
theme.bg_systray = theme.black

theme.fg_normal = theme.white
theme.fg_focus = theme.orange
theme.fg_urgent = theme.red
theme.fg_minimize = theme.light_white

theme.border_normal = theme.blue
theme.border_focus = theme.green
theme.border_marked = theme.purple

-- Variables set for theming notifications
theme.notification_font = "sans 12"
theme.notification_margin = dpi(10)
theme.notification_border_color = theme.border_normal
theme.notification_border_width = theme.border_width
theme.notification_icon_size = dpi(60)

-- Variables set for theming the menu
theme.awesome_icon = themes_path .. "/default/menu.png"
theme.menu_submenu_icon = themes_path .. "/default/submenu.png"
theme.menu_height = dpi(24)
theme.menu_width = dpi(120)

-- Define the image to load
theme.wallpaper = themes_path .. "/default/background.png"

theme.titlebar_close_button_normal = themes_path
  .. "/default/titlebar/close_normal.png"
theme.titlebar_close_button_focus = themes_path
  .. "/default/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path
  .. "/default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus = themes_path
  .. "/default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path
  .. "/default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive = themes_path
  .. "/default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path
  .. "/default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active = themes_path
  .. "/default/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path
  .. "/default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive = themes_path
  .. "/default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path
  .. "/default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active = themes_path
  .. "/default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path
  .. "/default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive = themes_path
  .. "/default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path
  .. "/default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active = themes_path
  .. "/default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path
  .. "/default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive = themes_path
  .. "/default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path
  .. "/default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active = themes_path
  .. "/default/titlebar/maximized_focus_active.png"

theme.layout_fairh = themes_path .. "/default/layouts/fairhw.png"
theme.layout_fairv = themes_path .. "/default/layouts/fairvw.png"
theme.layout_floating = themes_path .. "/default/layouts/floatingw.png"
theme.layout_magnifier = themes_path .. "/default/layouts/magnifierw.png"
theme.layout_max = themes_path .. "/default/layouts/maxw.png"
theme.layout_fullscreen = themes_path .. "/default/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path .. "/default/layouts/tilebottomw.png"
theme.layout_tileleft = themes_path .. "/default/layouts/tileleftw.png"
theme.layout_tile = themes_path .. "/default/layouts/tilew.png"
theme.layout_tiletop = themes_path .. "/default/layouts/tiletopw.png"
theme.layout_spiral = themes_path .. "/default/layouts/spiralw.png"
theme.layout_dwindle = themes_path .. "/default/layouts/dwindlew.png"
theme.layout_cornernw = themes_path .. "/default/layouts/cornernww.png"
theme.layout_cornerne = themes_path .. "/default/layouts/cornernew.png"
theme.layout_cornersw = themes_path .. "/default/layouts/cornersww.png"
theme.layout_cornerse = themes_path .. "/default/layouts/cornersew.png"

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = "/usr/share/icons/Adwaita"

return theme
