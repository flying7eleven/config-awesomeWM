-- vi: set tw=1000 ts=4 autoindent smartindent cindent:
-- Some ideas copied from https://github.com/JoeD84/awesome
rule_development_01 = {
	rule = { class = "Eclipse" },
	properties = { tag = tags[ 1 ][ 6 ] }
}

rule_development_02 = {
	rule = { class = "Spyder" },
	properties = { tag = tags[ 1 ][ 6 ] }
}

rule_development_03 = {
	rule = { class = "MeVisLab" },
	properties = { tag = tags[ 1 ][ 6 ] },
	callback = awful.titlebar.add
}
