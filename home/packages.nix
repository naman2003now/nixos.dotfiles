{ config, pkgs, pkgs-unstable, inputs, ... }: {
  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    # PCB designer    
    kicad

    pkgs-unstable.libreoffice-fresh
    hunspell
    hunspellDicts.en-us

    # rust
    rustup
    lldb
    cmake

    # C++
    gcc
    clang-tools

    # python
    python3
    black

    # nodejs
    nodejs

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
