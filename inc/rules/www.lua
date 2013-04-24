-- vi: set tw=1000 ts=4 autoindent smartindent cindent:
-- Some ideas copied from https://github.com/JoeD84/awesome
rule_www_01 = {
	rule = { class = "Google-chrome" },
	properties = { tag = tags[ 1 ][ 1 ] }
}

rule_www_02 = {
	rule = { instance = "app.asana.com" },
	properties = { tag = tags[ 1 ][ 8 ] }
}

rule_www_03 = {
	rule = { instance = "www.newsblur.com" },
	properties = { tag = tags[ 1 ][ 9 ] }
}

rule_www_04 = {
	rule = { instance = "calendar.google.com" },
	properties = { tag = tags[ 1 ][ 3 ] }
}
