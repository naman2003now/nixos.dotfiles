{ config, pkgs, pkgs-unstable, inputs, ... }: {
  home.file.".config/alacritty" = {
    source = ./config;
    recursive = true;
  };

  fonts.fontconfig.enable = true;
  home.packages = [
    pkgs-unstable.alacritty
    pkgs.fish
    (pkgs-unstable.nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];
}
