{ config, pkgs, pkgs-unstable, inputs, ... }:
{
  home.packages = [
    pkgs-unstable.zed-editor
  ];
}
