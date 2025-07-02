# /etc/nixos/boot.nix
{ config, pkgs, ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.initrd.systemd.enable = true;
  boot.initrd.systemd.packages = with pkgs; [
    clevis
    tpm2-tools
  ];
  boot.loader.efi.canTouchEfiVariables = true;
}

