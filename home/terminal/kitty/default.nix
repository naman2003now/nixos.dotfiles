{ config, pkgs, inputs, ... }: {
  programs.kitty = {
    enable = true;
  };

  home.file.".config/kitty" = {
    source = ./config;
    recursive = true;
  };

  fonts.fontconfig.enable = true;
  home.packages = [
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];
}
