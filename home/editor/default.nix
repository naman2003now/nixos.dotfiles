{ config, pkgs, pkgs-unstable, inputs, ... }:
{
  imports = [ ./neovim ./zed.nix ];
}
