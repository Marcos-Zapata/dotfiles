from typing import List  # noqa: F401
from settings.path import qtile_path
from settings.theme import colors
from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal

#Importo para cargar al arranca GOTO ':$'
import os
import subprocess
from libqtile import hook


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
    Key([mod], "Return", lazy.spawn("alacritty"), desc="Launch terminal"),

    #MIO:
    #Lanzar menu rofi
    Key([mod], "m", lazy.spawn("rofi -show drun"), desc="Lanzar menu rapido"),
    #Lanzar Firefox
    Key([mod], "f", lazy.spawn("firefox"), desc="Abrir navegador de firefox"),

    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "w", lazy.window.kill(), desc="Kill focused window"),

    Key([mod, "control"], "r", lazy.restart(), desc="Restart Qtile"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
]
# Volume
Key([], "XF86AudioLowerVolume", lazy.spawn("vlc")),
Key([], "XF86AudioRaiseVolume", lazy.spawn("pamixer --increase 5")),
Key([], "XF86AudioMute", lazy.spawn("pamixer --toggle-mute")),

# Brightness
Key([], "XF86MonBrightnessUp", lazy.spawn("brightnessctl set +10%")),
Key([], "XF86MonBrightnessDown", lazy.spawn("brightnessctl set 10%-")),


#Grupos configurados
groups = [Group(i) for i in [
    "   ", "   ", "   ", "   ", "  ", "   ", "   ", "   ", "   ",
]]

for i, group in enumerate(groups):
    actual_key = str(i + 1)
    keys.extend([
        # Switch to workspace N
        Key([mod], actual_key, lazy.group[group.name].toscreen()),
        # Send window to workspace N
        Key([mod, "shift"], actual_key, lazy.window.togroup(group.name))
    ])

layout_conf = {
    'border_focus': colors['focus'][0],
    'border_width': 1,
    'margin': 4
}

layouts = [
    #layout.Columns(),
    layout.Max(),
    #layout.Stack(num_stacks=2),
    layout.Bsp(**layout_conf),
    layout.Matrix(columns=2,**layout_conf),
    layout.MonadTall(**layout_conf),
    layout.MonadWide(**layout_conf),
    layout.RatioTile(**layout_conf),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]

widget_defaults = dict(
    font='UbuntuMono Nerd Font',
    fontsize=16,
    padding=1,
)
extension_defaults = widget_defaults.copy()

#Funciones para la barra
def base(fg='text', bg='dark'): 
    return {
        'foreground': colors[fg],
        'background': colors[bg]
    }


def separator():
    return widget.Sep(**base(), linewidth=0, padding=5)


def icon(fg='text', bg='dark', fontsize=16, text="?"):
    return widget.TextBox(
        **base(fg, bg),
        fontsize=fontsize,
        text=text,
        padding=None
    )


def powerline(fg="light", bg="dark"):
    return widget.TextBox(
        **base(fg, bg),
        text="", # Icon: nf-oct-triangle_left
        fontsize=53,
        padding=-5
    ) 

def workspaces(): 
    return [
        separator(),
        widget.GroupBox(
            **base(fg='light'),
            font='UbuntuMono Nerd Font',
            fontsize=19,
            margin_y=3,
            margin_x=0,
            padding_y=8,
            padding_x=5,
            borderwidth=1,
            active=colors['active'],
            inactive=colors['inactive'],
            rounded=False,
            highlight_method='block',
            urgent_alert_method='block',
            urgent_border=colors['urgent'],
            this_current_screen_border=colors['focus'],
            this_screen_border=colors['grey'],
            other_current_screen_border=colors['dark'],
            other_screen_border=colors['dark'],
            disable_drag=True
        ),
        separator(),
        widget.WindowName(**base(fg='focus'), fontsize=14, padding=5,format='{name}'),
        separator(),
    ]

screens = [
    Screen(
        top=bar.Bar([
                *workspaces(),

                separator(),

                powerline('color4', 'dark'),

                icon(bg="color4", text=' '), # Icon: nf-fa-download
    
                widget.CheckUpdates(
                    background=colors['color4'],
                    colour_have_updates=colors['text'],
                    colour_no_updates=colors['text'],
                    no_update_string='0',
                    display_format='{updates}',
                    update_interval=1800,
                    custom_command='checkupdates',
                    ),

                powerline('color3', 'color4'),

                icon(bg="color3", text=' '),  # Icon: nf-fa-feed
    
                widget.Net(**base(bg='color3'), interface='wlp1s0'),
    
                powerline('color2', 'color3'),

                widget.CurrentLayoutIcon(**base(bg='color2'), scale=0.65),

                widget.CurrentLayout(**base(bg='color2'), padding=5),

                powerline('color1', 'color2'),

                icon(bg="color1",fontsize=17, text=''), # Icon: nf-mdi-calendar_clock

                widget.Clock(**base(bg='color1'), format='%d/%m/%Y - %H:%M '),

                
                powerline('dark', 'color1'),

                widget.Systray(background=colors['dark'], padding=5),

                separator(),

            ],25),
        ),
        Screen(
            top=bar.Bar([
                *workspaces(),
 
                separator(),

                powerline('color4', 'dark'),

                icon(bg="color4", text=' '), # Icon: nf-fa-download

                widget.CheckUpdates(
                    background=colors['color4'],
                    colour_have_updates=colors['text'],
                    colour_no_updates=colors['text'],
                    no_update_string='0',
                    display_format='{updates}',
                    update_interval=1800,
                    custom_command='checkupdates',
                ),

                powerline('color3', 'color4'),

                icon(bg="color3", text=' '),  # Icon: nf-fa-feed

                widget.Net(**base(bg='color3'), interface='wlp1s0'),

                powerline('color2', 'color3'),

                widget.CurrentLayoutIcon(**base(bg='color2'), scale=0.65),

                widget.CurrentLayout(**base(bg='color2'), padding=5),

                powerline('color1', 'color2'),

                icon(bg="color1",fontsize=17, text=''), # Icon: nf-mdi-calendar_clock

                widget.Clock(**base(bg='color1'), format='%d/%m/%Y - %H:%M '),


                powerline('dark', 'color1'),

                widget.Systray(background=colors['dark'], padding=5),

                separator()

            ], 25),
        )
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
wmname = "LG3D"

#Arranque automatico
@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('~')
    subprocess.Popen([home + '/.config/qtile/autostart.sh'])
