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

    waybar
    pamixer
    bluez
    blueman
    wofi
    nemo
    kitty
    nwg-look
    libsForQt5.qt5ct
    qt6ct
    yazi
    libsForQt5.qtstyleplugin-kvantum
    kdePackages.qtstyleplugin-kvantum
    swww

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
    kdePackages.kdenlive
    obs-studio
    audacity
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };
}

