{ config, pkgs, inputs, ... }: {
  imports = [
    ./shell
    ./emulator
    ./utils
  ];
}
