Gnome 3 uses DCONF to store the preferences in a single binary file: ~/.config/dconf/user.
As per the Gnome docs, it is recommended to save only the settings that you need and restore them with either dconf or gsettings. However, gsettings is only able to restore the value(s) for one single key at a time (plus, the value must be quoted) and that makes it a bit awkward for this kind of task. Which leaves us with dconf.
So, in this particular case, save the current settings for gnome-shell keyboard shortcuts:

$ dconf dump /org/gnome/shell/keybindings/ > org_gnome_shell_keybindings

Here's a backup sample:

[/]
toggle-message-tray=['<Super>m']
open-application-menu=['<Super>F1']
toggle-application-view=['<Control>F1']
focus-active-notification=['<Super>n']
toggle-recording=['<Control><Shift><Alt>r']

Load the settings on another system:

$ dconf load /org/gnome/shell/keybindings/ < bkp

WM and Media Keys shortcuts belong to different schemas:

/org/gnome/desktop/wm/keybindings/
/org/gnome/mutter/keybindings/
/org/gnome/mutter/wayland/keybindings/
/org/gnome/settings-daemon/plugins/media-keys/

Note that dconf only dumps non-default values so if you run e.g.

dconf dump /org/gnome/desktop/wm/keybindings/

and don't get any output that means there's no custom WM shortcut defined.

Now, dump all the useful keybindings as per the command above and save them using their path. for eg: org_gnome_desktop_wm_keybindings so
that's easy when loading the dconf in another system.