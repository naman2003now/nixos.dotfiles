{ config, pkgs, ... }: {

  services.xserver = {
    enable = true;

    displayManager = {
      lightdm.enable = true;
      defaultSession = "none+awesome";
    };

    windowManager.awesome = {
      enable = true;
      luaModules = with pkgs.luaPackages; [
        luarocks # is the package manager for Lua modules
        luadbi-mysql # Database abstraction layer
      ];

    };

  };
  services.xserver.desktopManager.session = [{
    name = "xfce";
    desktopNames = [ "XFCE" ];
    bgSupport = true;
    start = ''
      /home/naman/code/c-window-manager/a.out > /home/naman/code/c-window-manager/logs.txt
    '';
  }];
}


