{ config, pkgs, inputs, ... }: {
  users.users.naman = {
    isNormalUser = true;
    description = "Naman Agrawal";
    extraGroups = [ "networkmanager" "wheel" ];
  };
}
