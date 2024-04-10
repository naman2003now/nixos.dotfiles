{configs, pkgs, inputs, ... } : {

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the Gnome Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Removing Bloat
  services.xserver.desktopManager.xterm.enable = false;
  environment.gnome.excludePackages = with pkgs.gnome; [
    baobab      # disk usage analyzer
    cheese      # photo booth
    eog         # image viewer
    epiphany    # web browser
    simple-scan # document scanner
    totem       # video player
    yelp        # help viewer
    evince      # document viewer
    file-roller # archive manager
    geary       # email client
    seahorse    # password manager

    pkgs.gnome-tour 
    gnome-clocks
    gnome-calendar
    gnome-calculator
    gnome-weather
    gnome-contacts
    gnome-maps
    gnome-music
    gnome-system-monitor
    gnome-terminal
  ];

  # Enable automatic login for the user.
  services.xserver.displayManager.autoLogin.enable = true;
  services.xserver.displayManager.autoLogin.user = "naman";
  
  # GNOME autologin workaround
  systemd.services."getty@tty1".enable = false;
  systemd.services."autovt@tty1".enable = false;


  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };
}
