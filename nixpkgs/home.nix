{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "kirill";
  home.homeDirectory = "/home/kirill";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    helix
    asdf-vm
    bat
    starship
    difftastic
    rust-analyzer
    httpie
    dog
    bottom
    zsh-completions
    nix-zsh-completions
    git-extras
    exa
    ripgrep
    nushell

    kubectx
    kubernetes
    hcloud
    doctl
    terraform

    # fonts
    # inter
    # jetbrains-mono
    # cascadia-code
  ];
}
