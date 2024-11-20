-------------------------------
-- Temperature Widget
-------------------------------

local wibox = require("wibox")
local watch = require("awful.widget.watch")


-- Create the text widget
local temp_text = wibox.widget{
    font = "hack nerd font 12",
    widget = wibox.widget.textbox,
}

-- Create the background widget
local temp_widget = wibox.widget.background()
temp_widget:set_widget(temp_text)

watch("acpi -t", 10, function(widget, stdout, stderr, exitreason, exitcode)
        temp_text:set_text(stdout)
    end,
    temp_widget
)

return temp_widget
