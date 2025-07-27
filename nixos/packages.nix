# /etc/nixos/packages.nix
{ config, pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    wl-clipboard
    protonvpn-gui
    wireguard-tools
    openresolv
    iptables   
    gnome-disk-utility
    yazi
    gcc
    hplip
    busybox
    starship
    tree
    hugo
    pass
    eza
    pinentry
    fastfetch
    clevis
    tpm2-tools
    neofetch
    home-manager
    neovim
    gnupg
    alacritty
    wget
    firefox
  ];
    services.dbus.packages = with pkgs; [ protonvpn-gui ];  # para que el GUI funcione vía D-Bus
}
