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

  targets.genericLinux.enable = true;

  home.packages = with pkgs; [
    asdf-vm
    bat
    bottom
    difftastic
    doctl
    dog
    exa
    fd
    git-extras
    hcloud
    helix
    httpie
    hub
    jq
    kubectx
    kubernetes
    nodePackages.svgo
    nushell
    optipng
    ripgrep
    rust-analyzer
    starship
    tealdeer
    terraform
    tokei
    zsh-completions
  ];

  home.file = {
    ".gitconfig".source = ../gitconfig;
    ".gemrc".source = ../gemrc;
    ".irbrc".source = ../irbrc;
    ".rspec".source = ../rspec;
    ".config/herlix/config.toml".source = ../helix.toml;
  };

  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    oh-my-zsh = {
      enable = true;
      custom = "$HOME/.dotfiles/zsh";
      plugins = [
        "asdf"
        "bundler"
        "docker"
        "docker-compose"
        "git"
        "ripgrep"
        "rust"
        "yarn"
      ];
    };
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      kubernetes = {
        disabled = false;
        style = "green";
      };
      package.disabled = true;
    };
  };
}
