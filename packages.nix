# /etc/nixos/packages.nix
{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    fzf
    vlc
    qbittorrent
    pinentry
    gnomeExtensions.dash-to-dock
    gnupg
    zoxide
    zsh
    emacs 
    git
    alacritty
    vim
    wget
    firefox
  ];
}

