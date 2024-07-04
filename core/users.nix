{ config, pkgs, inputs, ... }: {
  programs.fish.enable = true;
  programs.adb.enable = true;
  users.users.naman = {
    isNormalUser = true;
    description = "Naman Agrawal";
    extraGroups = [ "networkmanager" "wheel" "vboxusers" "dialout" "adbusers" ];
    shell = pkgs.fish;
  };
}
