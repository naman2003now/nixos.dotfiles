{ config, pkgs, inputs, ... }: {
  home.file.".config/fish" = {
    source = ./config;
    recursive = true;
  };
  home.packages = with pkgs; [
    fish
    starship
  ];
}
