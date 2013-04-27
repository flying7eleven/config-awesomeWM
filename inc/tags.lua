-- vi: set tw=1000 ts=4 autoindent smartindent cindent:
-- Some ideas copied from https://github.com/JoeD84/awesome
-- {{{ Tags

-- Prepare the tags for the different scenarios
tags = {}
myTags = {
	{ name = "1:www",		layout = awful.layout.suit.max,			wmfact = 1.0 },
	{ name = "2:email",		layout = awful.layout.suit.max,			wmfact = 1.0 },
	{ name = "3:calendar",	layout = awful.layout.suit.max,			wmfact = 1.0 },
	{ name = "4:skype",		layout = awful.layout.suit.tile.left,	wmfact = 0.9 },
	{ name = "5:pidgin",	layout = awful.layout.suit.tile.left,	wmfact = 0.85 },
	{ name = "6:terminal",	layout = awful.layout.suit.tile.bottom,	wmfact = 0.5 },
	{ name = "7:devel",		layout = awful.layout.suit.max,			wmfact = 1.0 },
	{ name = "8:asana",		layout = awful.layout.suit.max,			wmfact = 1.0 },
	{ name = "9:news",		layout = awful.layout.suit.max,			wmfact = 1.0 },
	{ name = "NA",			layout = awful.layout.suit.tile.left,	wmfact = 0.5 },
}

-- set the actually used tags
for s = 1, 1 do
	tags[ s ] = {}
	tmpTags = {}
	tmpLayouts = {}
	tmpFacts = {}
	for i, v in ipairs( myTags ) do
		table.insert( tmpTags, v.name )
		table.insert( tmpLayouts, v.layout )
		table.insert( tmpFacts, v.wmfact )
	end
	tags[ s ] = awful.tag( tmpTags, s, tmpLayouts )
	--for i, t in ipairs( tags[ s ] ) do
	--	awful.tag.setwmfact( tmpFacts[ i ].wmfact, t ) 
	--end
end
-- }}}
