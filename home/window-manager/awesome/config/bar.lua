local wibox = require("wibox")
local awful = require("awful")
local gears = require("gears")

return function(s)
	s.mywibox = awful.wibar({
		position = "bottom",
		screen = s,
		type = "dock",
	})

	-- Add widgets to the wibox
	s.mywibox:setup({
		layout = wibox.layout.align.horizontal,
		{ -- Left widgets
			layout = wibox.layout.fixed.horizontal,
			mylauncher,
			s.mytaglist,
			s.mypromptbox,
		},
		s.mytasklist, -- Middle widget
		{ -- Right widgets
			layout = wibox.layout.fixed.horizontal,
			mykeyboardlayout,
			wibox.widget.systray(),
			mytextclock,
			s.mylayoutbox,
		},
	})
end
