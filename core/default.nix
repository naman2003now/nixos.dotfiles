{ config, pkgs, inputs, ... }: {

  imports = [
    ./hardware-configuration.nix
    ./base.nix
    ./users.nix
    ./sound.nix
    ./system-packages.nix
    ./window-manager
    # ./steam.nix
    # ./nextcloud.nix
    # ./home-assistant.nix
  ];

}
