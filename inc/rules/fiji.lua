-- vi: set tw=1000 ts=4 autoindent smartindent cindent:
-- Some ideas copied from https://github.com/JoeD84/awesome
rule_fiji_01 = {
	rule = { class = "fiji-Main" },
	properties = {	maximized_vertical = false,
					maximized_horizontal = false,
					floating = true }
}

rule_fiji_02 = {
	rule = { instance = "sun-awt-X11-XFramePeer" },
	properties = {	maximized_vertical = false,
					maximized_horizontal = false,
					floating = true }
}
