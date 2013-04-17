-- vi: set tw=1000 ts=4 autoindent smartindent cindent:
-- Some ideas copied from https://github.com/JoeD84/awesome
-- {{{ Tags
tags = {}
tags.workSettings = {
	{ name = "1:www",		layout = awful.layout.suit.max,			wmfact = 1.0 },
	{ name = "2:email",		layout = awful.layout.suit.max,			wmfact = 1.0 },
	{ name = "3:skype",		layout = awful.layout.suit.tile.left,	wmfact = 0.9 },
	{ name = "4:pidgin",	layout = awful.layout.suit.tile.left,	wmfact = 0.85 },
	{ name = "5:terminal",	layout = awful.layout.suit.tile.bottom,	wmfact = 0.5 },
	{ name = "6:eclipse",	layout = awful.layout.suit.max,			wmfact = 1.0 },
	{ name = "7:NA",		layout = awful.layout.suit.tile.left,	wmfact = 0.5 },
	{ name = "8:NA",		layout = awful.layout.suit.tile.left,	wmfact = 0.5 },
	{ name = "9:NA",		layout = awful.layout.suit.tile.left,	wmfact = 0.5 },
}

-- based on the host name, we select the configuration we want to use
-- TODO: insert the code lines which check the host name
for s = 1, 1 do
	tags[ s ] = {}
	for i, v in ipairs( tags.workSettings ) do
		tags[ s ][ i ] = tag( { name = v.name } )
		tags[ s ][ i ].screen = s
		awful.tag.setproperty( tags[ s ][ i ], "layout", v.layout )
		awful.tag.setmwfact( v.wmfact, tags[ s ][ i ] )
	end
	tags[ s ][ 1 ].selected = true
end
-- }}}
