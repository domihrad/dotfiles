local awful = require("awful")
local beautiful = require("beautiful")

awful.util.spawn("xrandr -s 1920x1080")
awful.util.spawn("polybar")
awful.util.spawn("setxkbmap -model pc104 -layout cz -variant ,qwertz -option grp:win_space_toggle")
awful.util.spawn("xrandr -s 1920x1080 --dpi 120")


-- beautiful.useless_gap = 20

awful.screen.focused().padding = {top = "30", bottom = "30", left = "30", right = "30"}


-- End of Custom Loads

-- Enable sloppy focus, so that focus follows mouse.
client.connect_signal("mouse::enter", function(c)
    c:emit_signal("request::activate", "mouse_enter", {raise = false})
end)

client.connect_signal("focus", function(c) c.border_color = beautiful.border_focus end)
client.connect_signal("unfocus", function(c) c.border_color = beautiful.border_normal end)