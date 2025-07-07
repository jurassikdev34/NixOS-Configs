# /etc/nixos/users.nix
{ config, pkgs, ... }:

{
  users.users.alejandro = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "docker" ]; # Añada lo que ya tenga.
  };

  users.users.alejandro.shell = pkgs.fish;
  users.users.alejandro.ignoreShellProgramCheck = true;
}

