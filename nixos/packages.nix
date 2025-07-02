# /etc/nixos/packages.nix
{ config, pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    wl-clipboard
    yazi
    busybox
    tree
    pinentry
    fastfetch
    clevis
    tpm2-tools
    home-manager
    neovim
    gnupg
    alacritty
    wget
    firefox
  ];
}
