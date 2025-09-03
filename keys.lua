local wezterm 	= require 'wezterm'
local act 	= wezterm.action
local M = {}

function M.apply_to_config(config)
	config.keys	={
		{key  = "d", mods = "CMD", action = act.SplitHorizontal{domain = "CurrentPaneDomain"}},
		{ key = "D", mods = "CMD|SHIFT", action = act.SplitVertical{ domain = "CurrentPaneDomain" } },
    		{ key = "h", mods = "ALT", action = act.ActivatePaneDirection "Left" },
    		{ key = "l", mods = "ALT", action = act.ActivatePaneDirection "Right" },
	}
end
return M
