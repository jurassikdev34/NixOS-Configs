# /etc/nixos/gnome.nix
{ config, pkgs, ... }:
{
# En tu configuration.nix
services.xserver.displayManager.gdm.wayland = true;
programs.hyprland.enable = true; # enable Hyprland
xdg.portal = {
  enable = true;
  extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
};
security.polkit.enable = true;

}

