{ config, pkgs, inputs, ... }: {
  environment.etc."nextcloud-admin-pass".text = "Sh@lly1998";
  services.nextcloud = {
    enable = true;
    hostName = "0.0.0.0";
    package = pkgs.nextcloud28;
    config = {
      dbtype = "pgsql";
      adminpassFile = "/etc/nextcloud-admin-pass";
      extraTrustedDomains = [ "192.168.25.102" ];
    };
    extraApps = {
      inherit (config.services.nextcloud.package.packages.apps) contacts calendar tasks deck;
    };
    database.createLocally = true;
    extraAppsEnable = true;
  };
  networking.firewall = {
    enable = true;
    allowedTCPPorts = [ 80 443 ];
  };
  environment.systemPackages = with pkgs; [ ngrok ];
}
