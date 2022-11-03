--            ______     __     __     ______     ______     ______     __    __     ______     __     __     __    __    
--            /\  __ \   /\ \  _ \ \   /\  ___\   /\  ___\   /\  __ \   /\ "-./  \   /\  ___\   /\ \  _ \ \   /\ "-./  \   
--            \ \  __ \  \ \ \/ ".\ \  \ \  __\   \ \___  \  \ \ \/\ \  \ \ \-./\ \  \ \  __\   \ \ \/ ".\ \  \ \ \-./\ \  
--            \ \_\ \_\  \ \__/".~\_\  \ \_____\  \/\_____\  \ \_____\  \ \_\ \ \_\  \ \_____\  \ \__/".~\_\  \ \_\ \ \_\ 
--            \/_/\/_/   \/_/   \/_/   \/_____/   \/_____/   \/_____/   \/_/  \/_/   \/_____/   \/_/   \/_/   \/_/  \/_/ 
--
--
--             https://github.com/domihrad/dotfiles                                                                                                



pcall(require, "luarocks.loader")
local gears = require("gears")
local awful = require("awful")
require("awful.autofocus")
local wibox = require("wibox")
local beautiful = require("beautiful")
local naughty = require("naughty")
local menubar = require("menubar")
local hotkeys_popup = require("awful.hotkeys_popup")

require("awful.hotkeys_popup.keys")

-- Display errors if something is broken
--require "section.error"

beautiful.init(gears.filesystem.get_themes_dir() .. "default/theme.lua")

-- Select terminal to use default => Kitty
require "section.terminal"

-- Default layout setup
require "section.layout"

-- Display menu settings
require "section.menu"

-- Display screen settings
require "section.screen"

-- keybinds 
require "section.keybind"

-- Awesomewm rules
require "section.rules"

-- Autoload own aplication
require "section.autoload"
