# /etc/nixos/services.nix
{ config, pkgs, ... }:
{
  services.xserver.displayManager.gdm.enable = true;
  virtualisation.docker.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  systemd.oomd.enable = false;
  services.xserver.xkb.layout = "es";

  console.keyMap = "es";

  services.printing.enable = true;

  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };
}

