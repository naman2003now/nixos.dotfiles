{ config, pkgs, inputs, ... }: {
  programs.fish.enable = true;
  users.users.naman = {
    isNormalUser = true;
    description = "Naman Agrawal";
    extraGroups = [ "networkmanager" "wheel" "vboxusers" "dialout"];
    shell = pkgs.fish;
  };
}
