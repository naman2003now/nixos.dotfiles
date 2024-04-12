{ config, pkgs, inputs, ... }:
{
  home.file.".config/nvim" = {
    source = ./config;
    recursive = true;
  };
  home.packages = [
    pkgs.tree-sitter
    pkgs.neovim
    pkgs.stylua
  ];
}
