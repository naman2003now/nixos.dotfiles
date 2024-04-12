{ config, pkgs, inputs, ... }:
{
  home.file.".config/nvim" = {
    source = ./config;
    recursive = true;
  };
  home.packages = [
    pkgs.neovim
    pkgs.stylua
  ];
}
