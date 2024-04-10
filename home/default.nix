{config, pkgs, inputs, ...} : {
  home.username = "naman";
  home.homeDirectory = "/home/naman";
  imports = [
    ./terminal
    ./packages.nix
  ];

  # basic configuration of git
  programs.git = {
    enable = true;
    userName = "Naman Agrawal";
    userEmail = "naman2003now@gmail.com";
  };

  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
}
