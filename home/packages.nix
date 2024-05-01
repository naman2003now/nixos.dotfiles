{ config, pkgs, pkgs-unstable, inputs, ... }: {
  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    # PCB designer    
    kicad

    #development
    rustup
    lldb
    cmake
    gcc

    # archives
    zip
    xz
    unzip
    p7zip

    # utils
    ripgrep # recursively searches directories for a regex pattern
    eza # A modern replacement for ‘ls’
    fzf # A command-line fuzzy finder

    # misc
    neofetch
    cowsay
    file
    which
    tree
    gnused
    gnutar
    gawk
    zstd
    gnupg

    # For Love
    telegram-desktop
    discord

    pkgs-unstable.obsidian

    # nix related
    #
    # it provides the command `nom` works just like `nix`
    # with more details log output
    nix-output-monitor

    inputs.myecho.packages."${pkgs.system}".default
  ];
}
