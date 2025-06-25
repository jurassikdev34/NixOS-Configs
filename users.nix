# /etc/nixos/users.nix
{ config, pkgs, ... }:

{
  users.users.alejandro = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "docker" ]; # Añada lo que ya tenga.
  };

  users.users.alejandro.shell = pkgs.zsh;
  users.users.alejandro.ignoreShellProgramCheck = true;
  nixpkgs.config.firefox.enableGnomeExtensions = true;
  services.flatpak.enable = true;
  imports = [
    <home-manager/nixos>
  ];

  home-manager.users.alejandro = import ./home/alejandro.nix;
}

