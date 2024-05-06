{ config, pkgs, inputs, ... }: {
  xresources.properties = {
    "Xft.dpi" = 172;
  };

  home.file.".config/awesome" = {
    source = ./config;
    recursive = true;
  };
}
