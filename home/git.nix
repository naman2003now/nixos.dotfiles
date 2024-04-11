{ config, pkgs, inputs, ... }:
{
  home.packages = [
    pkgs.lazygit
    pkgs.git
  ];

  # basic configuration of git
  programs.git = {
    enable = true;
    userName = "Naman Agrawal";
    userEmail = "naman2003now@gmail.com";
  };
}
