{ pkgs, ... }:

{
  home.file.".config/alacritty/alacritty.toml".text = ''
[window]

opacity = 0.8


decorations = "Full"
decorations_theme_variant = "Dark"

[font]

normal.family = "Fira Code Nerd Font"
bold.family = "Fira Code Nerd Font"
italic.family = "Fira Code Nerd Font"
bold_italic.family = "Fira Code Nerd Font"

size = 11.0

# Colors (Everforest Dark)

# Default colors
[colors.primary]
background = '#2d353b'
foreground = '#d3c6aa'

# Normal colors
[colors.normal]
black   = '#475258'
red     = '#e67e80'
green   = '#a7c080'
yellow  = '#dbbc7f'
blue    = '#7fbbb3'
magenta = '#d699b6'
cyan    = '#83c092'
white   = '#d3c6aa'

# Bright colors
[colors.bright]
black   = '#475258'
red     = '#e67e80'
green   = '#a7c080'
yellow  = '#dbbc7f'
blue    = '#7fbbb3'
magenta = '#d699b6'
cyan    = '#83c092'
white   = '#d3c6aa'
  '';
}
 
