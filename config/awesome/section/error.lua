local naughty = require("naughty")

pcall(require, "luarocks.loader")
local gears = require("gears")
local awful = require("awful")
require("awful.autofocus")
local wibox = require("wibox")
local beautiful = require("beautiful")
local naughty = require("naughty")
local menubar = require("menubar")
local hotkeys_popup = require("awful.hotkeys_popup")

if awesome.startup_errors then
    naughty.notify(
    { 
        preset = naughty.config.presets.critical,
        title = "Oops, there were errors during startup!",
        text = awesome.startup_errors 
    })
end

do
    local in_error = false
    awesome.connect_signal("debug::error", function (err)
 
        if in_error then return end
        in_error = true

        naughty.notify(
        { 
            preset = naughty.config.presets.critical,
            title = "Oops, an error happened!",
            text = tostring(err) 
        })
        in_error = false
    end)
end