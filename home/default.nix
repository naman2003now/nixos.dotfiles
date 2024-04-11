{ config, pkgs, inputs, ... }: {
  home.username = "naman";
  home.homeDirectory = "/home/naman";
  imports = [
    ./terminal
    ./editor
    ./packages.nix
    ./git.nix
  ];

  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
}
