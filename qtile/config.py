# Imports
import os
import subprocess
from libqtile import bar, layout, widget, hook
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal
from qtile_extras import widget
from qtile_extras.widget.decorations import PowerLineDecoration, BorderDecoration

# Autostart
@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('~/.config/qtile/autostart.sh')
    subprocess.Popen([home])

@hook.subscribe.client_new
def client_new(client):
    if client.name == 'discord':
        client.togroup('4')


mod = "mod4"
terminal = guess_terminal()

keys = [
    # Switch between windows
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "space", lazy.layout.next(), desc="Move window focus to other window"),
    # Move windows
    Key([mod, "shift"], "h", lazy.layout.shuffle_left(), desc="Move window to the left"),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right(), desc="Move window to the right"),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),
    # Grow windows
    Key([mod, "control"], "h", lazy.layout.grow_left(), desc="Grow window to the left"),
    Key([mod, "control"], "l", lazy.layout.grow_right(), desc="Grow window to the right"),
    Key([mod, "control"], "j", lazy.layout.grow_down(), desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
    # Applications
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    Key([mod], "e", lazy.spawn("pcmanfm"), desc="Launch thunar"),
    Key([mod], "space", lazy.spawn("rofi -show drun -drun-display-format {name}"), desc="Spawn a command using a prompt widget"),
    #Key([mod], "space", lazy.spawncmd(), desc="Spawn a command using a prompt widget"),
    # Window control
    Key([mod], "m", lazy.window.toggle_fullscreen(), desc="full screens a window"),
    Key([mod], "s", lazy.window.toggle_floating(), desc="float window"),
    Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),
    Key([mod], "w", lazy.window.kill(), desc="Kill focused window"),
    # System
    Key([mod, "control"], "r", lazy.reload_config(), desc="Reload the config"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    Key([mod], "comma", lazy.screen.prev_screen(), desc="Move to prev screen"),
    Key([mod], "period", lazy.screen.next_group(), desc="Move to next screen"),
    Key([mod], "tab", lazy.next_screen(), desc="Move to next window"),
]


def go_to_group(group):
    def f(qtile):
        if group in '123':
            qtile.cmd_to_screen(0),
            qtile.groups_map[group].cmd_toscreen()
        else:
            qtile.cmd_to_screen(1)
            qtile.groups_map[group].cmd_toscreen()   

    return f

for i in '12345':
    keys.append(Key([mod], i, lazy.function(go_to_group(i)))),
    keys.append(Key([mod, 'shift'], i, lazy.window.togroup(i)))


layouts = [layout.Columns(border_on_single=True, border_focus="#6182b8",border_normal="#a0a0a0", border_width=2, margin=10)]

widget_defaults = dict(font="Hack Nerd Font Mono", fontsize=16, padding=3)
extension_defaults = widget_defaults.copy()

powerline = {"decorations": [
    PowerLineDecoration(path = 'forward_slash')]}

screens = [
    Screen( # Screen 1
        top=bar.Bar(
            [
                widget.Sep(
                    linewidth = 0,
                    padding = 10,
                    ),
                widget.GroupBox(
                    visible_groups=['1', '2', '3'],
                    highlight_color = "#4e4e4e",
                    highlight_method = "line",
                    active = "#82aaff",
                    inactive = "#a0a0a0",
                    this_current_screen_border = "#82aaff",
                    other_current_screen_border = '#ff0000', 
                    other_screen_border = '#ff0000',
                    ),
                widget.WindowName(foreground = '#a0a0a0', **powerline),
                widget.Systray(**powerline),
                widget.CheckUpdates(
                    update_interval = 1800,
                    distro = "Arch_checkupdates",
                    display_format = "{updates} Updates",
                    foreground = '#a0a0a0',
                    background = '#4e4e4e',
                    colour_have_updates = '#a0a0a0',
                    colour_no_updates = '#a0a0a0',
                    no_update_string = 'No Updates',
                    **powerline
                    ),
                widget.CPU(format = 'CPU: {load_percent}%', foreground = '#a0a0a0',background = '#263238', **powerline),
                widget.Memory(format = 'Mem: {MemUsed:.0f}{mm}', foreground = '#a0a0a0', background = '#4e4e4e', **powerline),
                widget.TextBox(foreground = '#a0a0a0', text = 'Vol:'),
                widget.PulseVolume(foreground = 'a0a0a0', **powerline),
                widget.Clock(format="%a, %b %d %I:%M %p ", foreground = '#a0a0a0',background = '#4e4e4e'),
            ],
            24,
            background="#263238",
            border_width=[0, 0, 2, 0],  # Draw top and bottom borders
            border_color=["ff00ff", "000000", "a0a0a0", "000000"]  # Borders are magenta
        ),
    ),
    Screen( #Screen 2
        top=bar.Bar(
            [
                widget.Sep(
                    linewidth = 0,
                    padding = 10,
                    ),
                widget.GroupBox(
                    visible_groups=['4', '5'], 
                    highlight_color = "#4e4e4e",
                    highlight_method = "line",
                    active = "#82aaff",
                    inactive = "#a0a0a0",
                    this_current_screen_border = "#82aaff",
                    ),
                widget.WindowName(foreground = '#a0a0a0', **powerline),
                widget.CPU(format = 'CPU {load_percent}%', foreground = '#a0a0a0',background = '#4e4e4e', **powerline),
                widget.Memory(format = 'Mem {MemUsed:.0f}{mm}', foreground = '#a0a0a0', **powerline),
                widget.Clock(format="%a, %b %d %I:%M %p ", foreground = '#a0a0a0',background = '#4e4e4e'),
            ],
            24,
            background="#263238",
            border_width=[0, 0, 2, 0],  # Draw top and bottom borders
            border_color=["ff00ff", "000000", "a0a0a0", "000000"]  # Borders are magenta
        ),
    )
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = False
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
    ]
)
auto_fullscreen = True
focus_on_window_activation = "focus"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True

# When using the Wayland backend, this can be used to configure input devices.
wl_input_rules = None

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "Qtile"


@hook.subscribe.startup_complete
def configScreens():
    qtile.cmd_to_screen(1)
    qtile.groups_map['4'].cmd_toscreen()
    qtile.cmd_to_screen(0)
