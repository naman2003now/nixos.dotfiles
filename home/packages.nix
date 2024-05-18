{ config, pkgs, pkgs-unstable, inputs, ... }: {
  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    # PCB designer    
    kicad

    pkgs-unstable.libreoffice-fresh
    hunspell
    hunspellDicts.en-us
    corefonts

    # assembly
    nasm

    # rust
    rustup
    lldb
    cmake
    pkg-config

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

    # Note taking
    pkgs-unstable.obsidian
    logseq
    todoist-electron

    # Chess
    pkgs-unstable.stockfish

    # nix related
    #
    # it provides the command `nom` works just like `nix`
    # with more details log output
    nix-output-monitor

    inputs.myecho.packages."${pkgs.system}".default


    # AppImages
    (appimageTools.wrapType2 {
      name = "msty";
      src = fetchurl {
        url = "https://assets.msty.app/Msty_x86_64.AppImage";
        hash = "sha256-7d4JuGdPsOtRhm/r8XH0Xn6Cf4q2XtSiPzm8i9JnYwc=";
      };
      extraPkgs = pkgs: with pkgs; [ ];
    })

    (appimageTools.wrapType2 {
      name = "llm-studio";
      src = fetchurl {
        url = "https://releases.lmstudio.ai/linux/0.2.23/beta/LM_Studio-0.2.23-Ubuntu-20.04.AppImage";
        hash = "sha256-QLP4S9fuxumrTTZEeVbjkJYZ2QGw3m3lnRp3NJSoMwg=";
      };
      extraPkgs = pkgs: with pkgs; [ ];
    })

    (appimageTools.wrapType2 {
      name = "en-croissant";
      src = fetchurl {
        url = "https://github.com/franciscoBSalgueiro/en-croissant/releases/download/v0.10.0/en-croissant_0.10.0_amd64.AppImage";
        hash = "sha256-dCPDdd9zY7MR6G3HWbNib5LAg7vJYpjcuWh+ZbnxuI4=";
      };
      extraPkgs = pkgs: with pkgs; [ libthai ];
    })
  ];

}
