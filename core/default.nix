{ config, pkgs, inputs, ... }: {

  imports = [
    ./hardware-configuration.nix
    ./base.nix
    ./users.nix
    ./sound.nix
    ./system-packages.nix
    ./window-manager
    # ./nextcloud.nix
    # ./home-assistant.nix
  ];

}
