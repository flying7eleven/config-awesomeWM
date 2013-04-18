-- Provided by: http://awesome.naquadah.org/wiki/Change_keyboard_maps
-- Keyboard map indicator and changer
kbdcfg = {}
kbdcfg.cmd = "setxkbmap"
kbdcfg.layout = { "us", "de" }
kbdcfg.current = 1  -- us is our default layout
kbdcfg.widget = widget({ type = "textbox", align = "right" })
kbdcfg.widget.text = " " .. kbdcfg.layout[kbdcfg.current] .. " "
kbdcfg.switch = function ()
	kbdcfg.current = kbdcfg.current % #(kbdcfg.layout) + 1
	local t = " " .. kbdcfg.layout[kbdcfg.current] .. " "
	kbdcfg.widget.text = t
	os.execute( kbdcfg.cmd .. t )
end

-- Mouse bindings for clicking this widget
kbdcfg.widget:buttons(awful.util.table.join(
	awful.button({ }, 1, function () kbdcfg.switch() end)
))
