# Copyright (c) 2010 Aldo Cortesi
# Copyright (c) 2010, 2014 dequis
# Copyright (c) 2012 Randall Ma
# Copyright (c) 2012-2014 Tycho Andersen
# Copyright (c) 2012 Craig Barnes
# Copyright (c) 2013 horsik
# Copyright (c) 2013 Tao Sauvage
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

from typing import List  # noqa: F401
from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal
from libqtile import widget

## Define a widget to display the current volume level
#volume = widget.Volume(
#    emoji=True,
#    fontsize=12,
#)
#
## Create a textbox widget to hold the volume widget and any other text
#textbox = widget.TextBox(
#    text='Vol:',
#    fontsize=12,
#    padding=5,
#)
#
## Define a widget bar to hold the volume textbox and widget
#widget_bar = widget.Bar([textbox, volume], 20)
#

mod = "mod4"
terminal = guess_terminal()

keys = [
    # Switch between windows
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "space", lazy.layout.next(),
        desc="Move window focus to other window"),

    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in Columns layout will create new column.
    Key([mod, "shift"], "h", lazy.layout.shuffle_left(),
        desc="Move window to the left"),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right(),
        desc="Move window to the right"),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(),
        desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),

    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    Key([mod, "control"], "h", lazy.layout.grow_left(),
        desc="Grow window to the left"),
    Key([mod, "control"], "l", lazy.layout.grow_right(),
        desc="Grow window to the right"),
    Key([mod, "control"], "j", lazy.layout.grow_down(),
        desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),

    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key([mod, "shift"], "Return", lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack"),
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),

    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "w", lazy.window.kill(), desc="Kill focused window"),
    Key([mod, "control"], "r", lazy.restart(), desc="Restart Qtile"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    Key([mod], "r", lazy.spawncmd(),
        desc="Spawn a command using a prompt widget"),
]

groups = [Group(i) for i in "123456"]

for i in groups:
    keys.extend([
        # mod1 + letter of group = switch to group
        Key([mod], i.name, lazy.group[i.name].toscreen(),
            desc="Switch to group {}".format(i.name)),

        # mod1 + shift + letter of group = switch to & move focused window to group
        Key([mod, "shift"], i.name, lazy.window.togroup(i.name, switch_group=True),
            desc="Switch to & move focused window to group {}".format(i.name)),
        # Or, use below if you prefer not to switch to that group.
        # # mod1 + shift + letter of group = move focused window to group
        # Key([mod, "shift"], i.name, lazy.window.togroup(i.name),
        #     desc="move focused window to group {}".format(i.name)),
    Key([mod], 'q', lazy.spawn('flameshot')),
    Key([mod], 'a', lazy.spawn('xfce4-screenshooter')),
#    Key([mod], 's', lazy.spawn('rxvt')),
    Key([mod], 'f', lazy.spawn('fvim ')),
    Key([mod], 's', lazy.spawn('signal-desktop')),
    Key([mod], 'c', lazy.spawn('chatgpt-desktop')),
#    Key([mod], 'r', lazy.spawn('rstudio-bin --no-sandbox')),
    Key([mod], 'u', lazy.spawn('alacritty')),
    Key([mod], 'v', lazy.spawn('kitty')),
    Key([mod], 'b', lazy.spawn('brave')),
    Key([mod], 'z', lazy.spawn('/usr/NX/bin/nxplayer')),
#    Key([mod], 'f', lazy.spawn('termite -t "File Manager" -e lf')),
# New
    Key([mod, "shift"], "r",lazy.spawn('kitty home/joernih/research/'))
])

layouts = [
    layout.Columns(border_focus_stack='#d75f5f'),
    layout.Max(),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.Matrix(),
    # layout.MonadTall(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]

widget_defaults = dict(
    font='sans',
    fontsize=22,
    padding=3,
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.CurrentLayout(),
                widget.GroupBox(
                    font="Hack Nerd Font",
                    fontsize=12,
                    margin_y=3,
                    margin_x=0,
                    padding_y=5,
                    padding_x=5,
                    borderwidth=1,
                    active="#ffffff",
                    inactive="#aaaaaa",
                    rounded=True,
                    highlight_color="#ffffff",
                    highlight_method="line",
                    this_current_screen_border="#ffffff",
                    this_screen_border="#aaaaaa",
                    other_current_screen_border="#ffffff",
                    other_screen_border="#aaaaaa",
                    ),
                widget.Prompt(),
                widget.WindowName(
                   foreground="#ffffff",
                   fontsize=12,
                   font="Hack Nerd Font",
                    ),
                widget.Chord(
                    chords_colors={
                        'launch': ("#ff0000", "#ffffff"),
                    },
                    name_transform=lambda name: name.upper(),
                ),
                #widget.TextBox("default config", name="default"),
                #widget.TextBox("Press &lt;M-r&gt; to spawn", foreground="#d75f5f"),
                widget.Systray(),
                widget.Clock(format='%Y-%m-%d %a %I:%M %p'),
               widget.QuickExit(),
            ],
            size=24,
            background="#222222"
        ),
    ),
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front())
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(float_rules=[
    # Run the utility of `xprop` to see the wm class and name of an X client.
    *layout.Floating.default_float_rules,
    Match(wm_class='confirmreset'),  # gitk
    Match(wm_class='makebranch'),  # gitk
    Match(wm_class='maketag'),  # gitk
    Match(wm_class='ssh-askpass'),  # ssh-askpass
    Match(title='branchdialog'),  # gitk
    Match(title='pinentry'),  # GPG key password entry
])
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
#wmname = "LG3D"
#
#screens = [                                                                                                                                                                                                                                                                            
#    Screen(                                                                                                                                                                                                                                                                            
#        wallpaper='~/homepageJIH/initsetup/wallpapers/reading.jpg',                                                                                                                                                                                                                    
#        wallpaper_mode='stretch',                                                                                                                                                                                                                                                      
#    )                                                                                                                                                                                                                                                                                  
#]    

#keys = [
#    # ...
#    Key([modkey], "Return", lazy.spawn(myTerm), desc="Launch terminal"),
#    Key([modkey], "f", lazy.window.toggle_fullscreen(), desc="Toggle fullscreen"),
#    # ...
#]
#

#from libqtile import bar, widget
#from libqtile.config import Screen
#
## Define the widgets
#widgets = [
#    widget.GroupBox(
#        font="Hack Nerd Font",
#        fontsize=12,
#        margin_y=3,
#        margin_x=0,
#        padding_y=5,
#        padding_x=5,
#        borderwidth=1,
#        active="#ffffff",
#        inactive="#aaaaaa",
#        rounded=True,
#        highlight_color="#ffffff",
#        highlight_method="line",
#        this_current_screen_border="#ffffff",
#        this_screen_border="#aaaaaa",
#        other_current_screen_border="#ffffff",
#        other_screen_border="#aaaaaa",
#    ),
#    widget.WindowName(
#        foreground="#ffffff",
#        fontsize=12,
#        font="Hack Nerd Font",
#    ),
##    widget.CPU(
##        foreground="#ffffff",
##        fontsize=12,
##        font="Hack Nerd Font",
##    ),
#    widget.Memory(
#        foreground="#ffffff",
#        fontsize=12,
#        font="Hack Nerd Font",
#        format="{MemUsed:.0f} MB / {MemTotal:.0f} MB"
#    ),
#    widget.Systray(),
#    widget.Clock(
#        foreground="#ffffff",
#        fontsize=12,
#        font="Hack Nerd Font",
#        format="%a %d %b, %I:%M %p"
#    ),
#]
#
## Define the top bar
#topbar = bar.Bar(
#    widgets=widgets,
#    size=20,
#    background="#222222",
#)
#
## Define the screens
#screens = [
#    Screen(top=topbar),
#]
#
#
#
#

#
#
#
#
#
#

import subprocess
subprocess.Popen(['keynav'])

