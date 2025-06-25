# /etc/nixos/packages.nix
{ config, pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    pinentry
    clevis
    tpm2-tools
    home-manager
    vim
    gnupg
    emacs 
    alacritty
    wget
    firefox
  ];
}

