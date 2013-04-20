
--
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

-- {{{ Startup applications
-- A list of commands executed after the login process
-- awful.util.spawn( "conky -c ~/.config/awesome/configs/conky.conf" );
run_once( "google-chrome", nil, "/opt/google/chrome/chrome" );
run_once( "google-chrome", "-app=https://app.asana.com", "/opt/google/chrome/chrome" );
run_once( "google-chrome", "-app=https://www.newsblur.com", "/opt/google/chrome/chrome" );
run_once( "thunderbird", nil, "/usr/lib/thunderbird/thunderbird" );
run_once( "eclipse" );
run_once( "skype" );
run_once( "pidgin" );
run_once( "gnome-terminal" );
run_once( "xcompmgr -cFr0 &" )
-- }}}
