# /etc/nixos/users.nix
{ config, pkgs, ... }:
{
  users.users.alejandro = {
    isNormalUser = true;
    description = "Alejandro";
    extraGroups = [ "networkmanager" "wheel" ];
  };
}

