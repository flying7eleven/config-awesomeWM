-- vi: set tw=1000 ts=4 autoindent smartindent cindent:
-- Some ideas copied from https://github.com/JoeD84/awesome
rule_im_01 = {
	rule = { class = "Skype" },
	properties = { tag = tags[ 1 ][ 3 ] }
}
rule_im_02 = {
	rule = { class = "Pidgin" },
	properties = { tag = tags[ 1 ][ 3 ] }
}
rule_im_03 = { 
	rule = { name = "Hangouts" },
	properties = { floating = true, focus = true },
	callback = function( c )
					c:geometry( { width = 300 , height = 300 } )
			   end
}
