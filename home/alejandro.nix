{ config, pkgs, ... }:

let
  modulesDir = /etc/nixos/home/modules;
in
{
  home.username = "alejandro";
  home.homeDirectory = "/home/alejandro";
  programs.zsh.enable = true;
  nixpkgs.config.allowUnfree = true;
  imports = [
    "${modulesDir}/git.nix"
    "${modulesDir}/zsh.nix"
  ];

  home.stateVersion = "25.05";

  home.packages = with pkgs; [
	vlc
	obsidian
  ffmpeg_6-full
  frei0r
	hugo
	pass
  wineWowPackages.stable
  gsettings-desktop-schemas
	zed-editor
	thunderbird
	prismlauncher
	qbittorrent
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };

}
