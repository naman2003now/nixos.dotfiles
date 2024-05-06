{ config, pkgs, inputs, ... }: {
  home.username = "naman";
  home.homeDirectory = "/home/naman";
  imports = [
    ./terminal
    ./editor
    ./window-manager
    ./packages.nix
    ./git.nix
  ];

  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
}
