# /etc/nixos/packages.nix
{ config, pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    wl-clipboard
    gnome-disk-utility
    yazi
    gcc
    hplip
    busybox
    starship
    tree
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
}
