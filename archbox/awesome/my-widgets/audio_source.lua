-- alsa_output.pci-0000_07_00.1.hdmi-stereo
-- alsa_output.usb-Logitech_PRO_000000000000-00.analog-stereo

local wibox = require("wibox")

local button = wibox.widget{
    markup = "<span foreground='#61afef'>󰓃</span>",
    font = "hack nerd font 18",
    widget = wibox.widget.textbox
}

-- button_bassic:connect_signal("button::press", function(c) c:set_fg("#ffffff") end)

return button
