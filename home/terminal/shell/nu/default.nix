{ config, pkgs, inputs, ... }: {
  home.file.".config/nushell" = {
    source = ./config;
    recursive = true;
  };
  home.packages = with pkgs; [
    fish
    starship
  ];
}
