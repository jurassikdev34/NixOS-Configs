# /etc/nixos/configuration.nix
{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware.nix
      ./boot.nix
      ./network.nix
      ./locale.nix
      ./services.nix
      ./users.nix
      ./packages.nix
      ./hyprland.nix
    ];

  system.stateVersion = "25.05"; # Como lo tenías
}

