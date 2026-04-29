-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action
-- This will hold the configuration.
local config = wezterm.config_builder()


--===================================================================
-- 设置窗口启动时配置
--===================================================================
-- 设置启动时的窗口大小
config.initial_cols = 120
config.initial_rows = 28

-- 设置默认打开的程序
config.default_prog = { 'wsl.exe', '--cd', '~'}


--===================================================================
-- 设置 Ctrl + 滚轮 缩放
--===================================================================
-- 禁止窗口大小跟随字体缩放
config.adjust_window_size_when_changing_font_size = false
config.mouse_bindings = {
  -- Ctrl + 滚轮上 = 放大字体
  {
    event = { Down = { streak = 1, button = { WheelUp = 1 } } },
    mods = 'CTRL',
    action = act.IncreaseFontSize,
  },

  -- Ctrl + 滚轮下 = 缩小字体
  {
    event = { Down = { streak = 1, button = { WheelDown = 1 } } },
    mods = 'CTRL',
    action = act.DecreaseFontSize,
  },
}


--===================================================================
-- 设置配色方案
--===================================================================
-- 上千种预设的配色方案：https://wezterm.org/colorschemes/index.html
config.color_scheme = 'Catppuccin Mocha'


--===================================================================
-- 设置字体
--===================================================================
config.font = wezterm.font_with_fallback {
  'JetBrains Mono',
  'Symbols Nerd Font Mono',
  'Noto Sans CJK SC',
  'Noto Color Emoji',
}
config.font_size = 10


--===================================================================
-- 设置窗口样式
--===================================================================
config.window_frame = {
  -- The font used in the tab bar.
  -- Roboto Bold is the default; this font is bundled
  -- with wezterm.
  -- Whatever font is selected here, it will have the
  -- main font setting appended to it to pick up any
  -- fallback fonts you may have used there.
  font = wezterm.font { family = 'Roboto', weight = 'Bold' },

  -- The size of the font in the tab bar.
  -- Default to 10.0 on Windows but 12.0 on other systems
  font_size = 12.0,

  -- The overall background color of the tab bar when
  -- the window is focused
  active_titlebar_bg = '#333333',

  -- The overall background color of the tab bar when
  -- the window is not focused
  inactive_titlebar_bg = '#333333',
}

config.colors = {
  tab_bar = {
    -- The color of the inactive tab bar edge/divider
    inactive_tab_edge = '#575757',
  },
}

-- 设置窗口背景透明度 0-1
config.window_background_opacity = 0.9


---------------------------------------------------------------------
-- Finally, return the configuration to wezterm:
return config
