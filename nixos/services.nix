# /etc/nixos/services.nix
{ config, pkgs, ... }:
{
  services.xserver.displayManager.gdm.enable = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  virtualisation.docker.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  services.flatpak.enable = true;
  systemd.oomd.enable = false;
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

