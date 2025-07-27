# /etc/nixos/network.nix
{ config, pkgs, lib, ... }:
{
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;
}
