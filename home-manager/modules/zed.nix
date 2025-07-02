{ pkgs, ... }:

{
  home.file.".config/zed/settings.json".text = ''
{
  "telemetry": {
    "metrics": false,
    "diagnostics": false
  },
  "vim_mode": true,
  "ui_font_size": 16,
  "buffer_font_size": 16,
  "theme": {
    "mode": "system",
    "light": "One Light",
    "dark": "Everforest Dark"
  }
}
  '';
}
 
