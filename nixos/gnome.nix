# /etc/nixos/gnome.nix
{ config, pkgs, ... }:
{
  services.xserver.desktopManager.gnome.enable = true;
  environment.gnome.excludePackages = (with pkgs; [
    decibels
    snapshot
    gnome-connections
    gnome-calculator
    simple-scan
    gnome-calendar
    cheese
    loupe
    gnome-photos
    gnome-tour
    gnome-clocks
    gnome-text-editor
    gnome-music
    gnome-terminal
    gnome-console
    gnome-logs
    epiphany 
    geary 
    evince 
    gnome-characters
    totem 
    yelp 
    gnome-maps
    gnome-weather
    gnome-contacts
  ]);
}

