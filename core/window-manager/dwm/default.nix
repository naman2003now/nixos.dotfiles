{ config, inputs, pkgs, ... }: {
  environment.systemPackages = [
    inputs.dwm.packages."${pkgs.system}".default
  ];

  services.xserver.desktopManager.session = [{
    name = "dwm";
    desktopNames = [ "DWM" ];
    bgSupport = true;
    start = ''
      /usr/bin/dwm
    '';
  }];
}
