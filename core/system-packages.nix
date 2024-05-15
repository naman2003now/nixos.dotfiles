{ configs, pkgs, inputs, ... }: {
  environment.systemPackages = with pkgs; [
    firefox
    neovim
    vim
    git
    xclip
    (appimage-run.override {
      extraPkgs =
        pkgs: with pkgs; [
          libthai
          libsecret
        ];
    })
  ];
}
