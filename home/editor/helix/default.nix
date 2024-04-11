{ config, pkgs, inputs, ... }:
{
  home.file.".config/helix" = {
    source = ./config;
    recursive = true;
  };
  home.packages = [
    pkgs.helix
  ];
}
