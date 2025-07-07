# /etc/nixos/packages.nix
{ config, pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    wl-clipboard
    yazi
    gcc
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
