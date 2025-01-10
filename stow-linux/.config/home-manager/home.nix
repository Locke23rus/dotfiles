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

  home.stateVersion = "24.11";
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  targets.genericLinux.enable = true;
  xdg.enable = true;
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    any-nix-shell
    bottom
    cacert
    carapace
    delta
    difftastic
    doctl
    eza # fork of exa
    fd
    fzf
    git
    git-extras
    go_1_23
    hcloud
    helix
    hub
    jless
    jq
    just
    kubectx
    kubernetes
    lazygit
    mise
    nix
    nixfmt-rfc-style
    nodePackages.svgo
    optipng
    ripgrep
    rust-analyzer
    sqlite
    stow
    tealdeer
    tokei
    zig
    zls
    zsh-completions
    # (nerdfonts.override { fonts = [ "JetBrainsMono" ]; }) # nix fonts don't work in flatpak apps :/
  ];

  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    oh-my-zsh = {
      enable = true;
      custom = "$HOME/.dotfiles/zsh";
      plugins = [
        "bundler"
        "direnv"
        "docker"
        "docker-compose"
        "git"
        "rust"
        "yarn"
      ];
    };
    initExtra = ''
      any-nix-shell zsh --info-right | source /dev/stdin
    '';
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      kubernetes = {
        disabled = true;
        style = "green";
      };
      package.disabled = true;
      elixir.disabled = true;
    };
  };

  programs.bat.enable = true;

  programs.direnv.enable = true;
  programs.direnv.nix-direnv.enable = true;

  programs.mcfly = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };

}
