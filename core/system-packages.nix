{ configs, pkgs, inputs, ... }: {
  environment.systemPackages = with pkgs; [
    firefox
    neovim
    vim
    git
  ];
}
