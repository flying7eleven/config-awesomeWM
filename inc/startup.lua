-- vi: set tw=1000 ts=4 autoindent smartindent cindent:
-- TODO: idea from ...
-- {{{ Startup applications
local hostname = io.popen( "uname -n" ):read()

-- function for ensuring that every program just runs once
function run_once(prg,arg_string,pname,screen)
	if not prg then
		do return nil end
	end
	if not pname then
		pname = prg
	end
	if not arg_string then
		awful.util.spawn_with_shell("pgrep -f -u $USER -x '" .. pname .. "' || (" .. prg .. ")",screen)
	else
		awful.util.spawn_with_shell("pgrep -f -u $USER -x '" .. pname .. " ".. arg_string .."' || (" .. prg .. " " .. arg_string .. ")",screen)
	end
end

-- start the applications which should always start
-- awful.util.spawn( "conky -c ~/.config/awesome/configs/conky.conf" );

-- start the applications for work
if not hostname == "zockepeter" then
	run_once( "chromium", nil, "/usr/lib/chromium/chromium" );
	run_once( "chromium", "--app=https://calendar.google.com", "/usr/lib/chromium/chromium" );
	run_once( "chromium", "--app=https://app.asana.com", "/usr/lib/chromium/chromium" );
	run_once( "chromium", "--app=https://www.newsblur.com", "/usr/lib/chromium/chromium" );
	run_once( "thunderbird" );
	run_once( "terminator", nil, "/usr/bin/python2 /usr/bin/terminator" );
	run_once( "skype", nil, "/usr/lib32/skype/skype" );
	run_once( "pidgin" );
	run_once( "eclipse", nil, "/bin/bash /usr/bin/eclipse" );
--	run_once( "steam", nil, "bash /usr/bin/steam" );
end
-- }}}
