{ config, pkgs, pkgs-unstable, pkgs-fork, inputs, ... }: {
  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    google-chrome
    android-tools

    # PCB designer    
    kicad

    pkgs-unstable.libreoffice-fresh
    hunspell
    hunspellDicts.en-us
    corefonts

    # assembly
    nasm

    pkgs-unstable.alvr

    # rust
    rustup
    lldb
    cmake
    pkg-config
    pkgs-unstable.wasm-bindgen-cli
    pkgs-unstable.dioxus-cli
    pkgs-fork.jetbrains.rust-rover
    pkgs-unstable.godot_4
    cargo-generate

    # C++
    gcc
    clang-tools
    SDL2

    # python
    python3
    black
    manim
    thonny

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

    vial

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

    # desmume
    # (retroarch.override {
    #   cores = with libretro; [
    #     snes9x
    #     mgba
    #     desmume
    #   ];
    # })

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
      name = "lm-studio";
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

    (appimageTools.wrapType2 {
      name = "balena-etcher";
      src = fetchurl {
        url = "https://github.com/balena-io/etcher/releases/download/v1.19.21/balenaEtcher-1.19.21-x64.AppImage";
        hash = "sha256-dHhz7vcrrJZu4rWXRtwcIt2UvFThZrtKHz9H2qV2H60=";
      };
      extraPkgs = pkgs: with pkgs; [ libthai ];
    })

    (appimageTools.wrapType2 {
      name = "immersed";
      src = fetchurl {
        url = "https://static.immersed.com/dl/Immersed-x86_64.AppImage";
        hash = "sha256-baor2NPCxHnBuPCaXy8eLQDXawEz480Z4LzjGflsCq0=";
      };
      extraPkgs = pkgs: with pkgs; [ libthai ];
    })

    (appimageTools.wrapType2 {
      name = "popcorntimes";
      src = fetchurl {
        url = "https://github.com/popcorn-official/popcorn-desktop/releases/download/v0.5.1/Popcorn-Time-0.5.1-linux64.AppImage";
        hash = "sha256-SrcR0FRW7DtPrrte4m86YiMBB6cGgO6W5bccPwBGVeg=";
      };
      extraPkgs = pkgs: with pkgs; [ libthai ];
    })

  ];

}
