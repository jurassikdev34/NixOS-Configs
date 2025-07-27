{ config, pkgs, ... }:
{

services.xserver.displayManager.gdm.wayland = true;
programs.hyprland.enable = true; # enable Hyprland
xdg.portal = {
  enable = true;
  extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
};
security.polkit.enable = true;
environment.systemPackages = with pkgs; [
    waybar
    pamixer
    brightnessctl
    bluez
    blueman
    wofi
    nemo
    nwg-look
    libsForQt5.qt5ct
    qt6ct
    libsForQt5.qtstyleplugin-kvantum
    kdePackages.qtstyleplugin-kvantum
    swww
  ];


}

