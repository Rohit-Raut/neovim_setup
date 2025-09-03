local wezterm 	= require("wezterm")
local config	= wezterm.config_builder()
local act = wezterm.action
config.initial_rows = 50
config.initial_cols = 150
config.window_background_opacity = 0.95
config.font_size= 13
config.line_height=1.2
config.font = wezterm.font("JetBrains Mono")
config.harfbuzz_features = { 'calt=1', 'clig=1', 'liga=1' }
config.colors = {
	cursor_bg= "white",
	cursor_border="white"
}

--appearance section
config.native_macos_fullscreen_mode = true
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab=true

config.keys={

		{
   	         key = 'd',
   	         mods = 'CMD',
   	         action = act.SplitHorizontal { domain = "CurrentPaneDomain" },
		},
		{
   	         key = 'd',
   	         mods = 'CMD|SHIFT',
   	         action = act.SplitVertical { domain = "CurrentPaneDomain" },
		},

		{
  		  key = 'LeftArrow',
  		  mods = 'CMD',
  		  action = act.SendString '\x01',
  		},

  		{
  		  key = 'RightArrow',
  		  mods = 'CMD',
  		  action = act.SendString '\x05',
  		},
		{	
		key = 'Backspace',
      		mods = 'CMD',
      		action = act.SendString '\x15',
    		},
		{
     		key = 'UpArrow',
      		mods = 'CMD',
      		action = act.ScrollToTop,
    		},
    		{
      		key = 'DownArrow',
      		mods = 'CMD',
      		action=act.ScrollToBottom,
		},

}
config.window_padding={
	left = 2,
	right = 2,
	top = 2,
	bottom= 1,
}
config.max_fps  = 120
config.prefer_egl = true

return config
