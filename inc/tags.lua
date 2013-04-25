-- vi: set tw=1000 ts=4 autoindent smartindent cindent:
-- Some ideas copied from https://github.com/JoeD84/awesome
-- {{{ Tags
local hostname = io.popen( "uname -n" ):read()

-- Prepare the tags for the different scenarios
tags = {}
tags.workSettings = {
	{ name = "1:www",		layout = awful.layout.suit.max,			wmfact = 1.0 },
	{ name = "2:email",		layout = awful.layout.suit.max,			wmfact = 1.0 },
	{ name = "3:calendar",	layout = awful.layout.suit.max,			wmfact = 1.0 },
	{ name = "4:skype",		layout = awful.layout.suit.tile.left,	wmfact = 0.9 },
	{ name = "5:pidgin",	layout = awful.layout.suit.tile.left,	wmfact = 0.85 },
	{ name = "6:terminal",	layout = awful.layout.suit.tile.bottom,	wmfact = 0.5 },
	{ name = "7:eclipse",	layout = awful.layout.suit.max,			wmfact = 1.0 },
	{ name = "8:asana",		layout = awful.layout.suit.max,			wmfact = 1.0 },
	{ name = "9:news",		layout = awful.layout.suit.max,			wmfact = 1.0 },
	{ name = "NA",			layout = awful.layout.suit.tile.left,	wmfact = 0.5 },
}

tags.privateSettings = {
	{ name = "1:www",		layout = awful.layout.suit.max,			wmfact = 1.0 },
	{ name = "2:email",		layout = awful.layout.suit.max,			wmfact = 1.0 },
	{ name = "3:terminal",	layout = awful.layout.suit.tile.left,	wmfact = 0.5 },
	{ name = "4:steam",		layout = awful.layout.suit.max,			wmfact = 1.0 },
	{ name = "5:NA",		layout = awful.layout.suit.tile.left,	wmfact = 0.5 },
	{ name = "6:NA",		layout = awful.layout.suit.tile.left,	wmfact = 0.5 },
	{ name = "7:NA",		layout = awful.layout.suit.tile.left,	wmfact = 0.5 },
	{ name = "8:NA",		layout = awful.layout.suit.tile.left,	wmfact = 0.5 },
	{ name = "9:NA",		layout = awful.layout.suit.tile.left,	wmfact = 0.5 },
}

-- based on the host name, we select the configuration we want to use
if hostname == "zockepeter" then
	tags.usedTags = tags.privateSettings
else
	tags.usedTags = tags.workSettings
end

-- set the actually used tags
for s = 1, 1 do
	tags[ s ] = {}
	tmpTags = {}
	tmpLayouts = {}
	tmpFacts = {}
	for i, v in ipairs( tags.usedTags ) do
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
