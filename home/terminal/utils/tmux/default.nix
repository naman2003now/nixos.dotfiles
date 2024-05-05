{ config, pkgs, inputs, ... }: {
  home.file.".config/tmux" = {
    source = ./config;
    recursive = true;
  };

  home.packages = [
    pkgs.tmux
  ];
}
