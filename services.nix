# /etc/nixos/services.nix
{ config, pkgs, ... }:
{
  #  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  services.emacs = {
    enable = true;
    package = pkgs.emacs;
  };

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

