-- vi: set tw=1000 ts=4 autoindent smartindent cindent:
-- Script provided by https://wiki.archlinux.org/index.php/Awesome

-- configuration - edit to your liking
wp_index = 1
wp_timeout  = 3600 -- change the background image every hour
wp_user = io.popen( "whoami" ):read()
wp_path = "/home/" .. wp_user .. "/.config/awesome/themes.old/work/wallpapers/"
wp_files = { "01.jpg", "02.jpg" }

-- set the initial background
wp_init_timer = timer { timeout = 5 }
wp_init_timer:connect_signal( "timeout", function()
	wp_init_timer:stop()
	for s = 1, screen.count() do
		gears.wallpaper.maximized( wp_path .. wp_files[ wp_index ], s, true )
	end
end)

-- setup the timer for changing the background images
wp_timer = timer { timeout = wp_timeout }
wp_timer:connect_signal( "timeout", function()
	-- set wallpaper to current index
	for s = 1, screen.count() do
		gears.wallpaper.maximized( wp_path .. wp_files[ wp_index ], s, true )
	end

	-- stop the timer (we don't need multiple instances running at the same time)
	wp_timer:stop()

	-- get next random index
	wp_index = math.random( 1, #wp_files)

	--restart the timer
	wp_timer.timeout = wp_timeout
	wp_timer:start()
end)
 
-- initial start when rc.lua is first run
wp_init_timer:start()
wp_timer:start()
