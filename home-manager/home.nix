{ config, pkgs, ... }:

let
  modulesDir = ./modules;
  moduleFiles = builtins.attrNames (builtins.readDir modulesDir);
  nixFiles = builtins.filter (name: builtins.match ".*\\.nix" name != null) moduleFiles;
  importsList = map (name: modulesDir + "/${name}") nixFiles;
in
{
  home.username = "alejandro";
  home.homeDirectory = "/home/alejandro";
  programs.zsh.enable = true;
  nixpkgs.config.allowUnfree = true;

  imports = importsList;


  home.stateVersion = "25.05";

  home.packages = with pkgs; [
    vlc
    protonmail-desktop
    fortune
    pavucontrol
    cowsay
    monero-gui
    gnome-keyring
    krita
    electrum
    obsidian
    nodejs_22
    ffmpeg_6-full
    frei0r
    wineWowPackages.stable
    zed-editor
    thunderbird
    prismlauncher
    qbittorrent
    kdePackages.kdenlive
    obs-studio
    audacity
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };
}

