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
  xdg.enable = true;
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    asdf-vm
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
    tealdeer
    terraform
    tokei
    zsh-completions
  ];

  home.file = {
    ".gitconfig".source = ../gitconfig;
    ".gemrc".source = ../gemrc;
    ".irbrc".source = ../irbrc;
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

  programs.bat.enable = true;

  programs.git = {
    enable = true;
    package = pkgs.gitAndTools.gitFull;
    userName = "Kirill Nikitin";
    userEmail = "locke23rus@gmail.com";
    aliases = {
      br = "branch";
      ci = "commit";
      co = "checkout";
      df = "diff";
      dm = "delete-merged-branches";
      lg = "log -p";
      lol = "log --graph --decorate --pretty=oneline --abbrev-commit";
      lola = "log --graph --decorate --pretty=oneline --abbrev-commit --all";
      ls = "ls-files";
      rs = "restore";
      st = "status";
      sw = "switch";
    };
    extraConfig = {
      color.branch.current = "yellow reverse";
      color.branch.local = "yellow";
      color.branch.remote = "green";
      color.diff.frag = "magenta bold";
      color.diff.meta = "yellow bold";
      color.diff.new = "green bold";
      color.diff.old = "red bold";
      color.diff.whitespace = "red reverse";
      color.status.added = "yellow";
      color.status.changed = "green";
      color.status.untracked = "cyan";
      color.ui = true;
      core.excludesfile = "~/.dotfiles/gitignore";
      core.whitespace = "fix,-indent-with-non-tab,trailing-space,cr-at-eol";
      diff.tool = "vimdiff";
      difftool.prompt = false;
      github.user = "locke23rus";
      init.defaultBranch = "main";
      pull.rebase = false;
      push.autSetupRemote = true;
      push.default = "upstream";
    };
  };
}
