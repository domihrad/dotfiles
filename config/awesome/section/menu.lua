local gears = require("gears")
local awful = require("awful")
local wibox = require("wibox")
local menubar = require("menubar")
local beautiful = require("beautiful")
local hotkeys_popup = require("awful.hotkeys_popup")

beautiful.menu_height = 38
beautiful.menu_width = 200
beautiful.menu_bg_normal = "#21222c"
beautiful.menu_bg_focus = "#2d3341"
beautiful.menu_fg_normal = "#86aaf5"
beautiful.menu_fg_focus = "#ffffff"
beautiful.menu_font = "SourceCodePro 11.75"

myawesomemenu = {
   { "Hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
   { "Manual", terminal .. " -e man awesome" },
   { "Config", editor_cmd .. " " .. awesome.conffile },
   { "Restart", awesome.restart },
   { "Quit", function() awesome.quit() end },
}

mymainmenu = awful.menu(
{ items = { 
    { "Awesome", myawesomemenu },
    { "Terminal", terminal }}
})

mylauncher = awful.widget.launcher(
{ 
    image = beautiful.awesome_icon,
    menu = mymainmenu 
})

menubar.utils.terminal = terminal 

mykeyboardlayout = awful.widget.keyboardlayout()

mytextclock = wibox.widget.textclock()


root.buttons(gears.table.join(
    awful.button({ }, 3, function () mymainmenu:toggle() end),
    awful.button({ }, 4, awful.tag.viewnext),
    awful.button({ }, 5, awful.tag.viewprev)
))

