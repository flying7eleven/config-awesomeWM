-- vi: set tw=1000 ts=4 autoindent smartindent cindent:
-- Some ideas copied from https://github.com/JoeD84/awesome
rule_terminal_01 = {}

rule_terminal_01.private = {
	rule = { class = "Gnome-terminal" },
	properties = { tag = tags[ 1 ][ 3 ] }
}

rule_terminal_01.work = {
	rule = { class = "Gnome-terminal" },
	properties = { tag = tags[ 1 ][ 5 ] }
}

if wmHostname == "zockepeter" then
	rule_terminal_01.currentlyActive = rule_terminal_01.private
else
	rule_terminal_01.currentlyActive = rule_terminal_01.work
end
