{
  home = { lib, pkgs, config, ... }:
    with lib;
    let
      cfg = config.nav.modules.base16;
      enableZsh = cfg.withZsh && config.programs.zsh.enable;
      enableTmux = cfg.withTmux && config.programs.tmux.enable;

      base16_shell_dir = "${pkgs.base16.out}/share/shell/scripts";
      base16_tmux_dir = "${pkgs.base16.out}/share/tmux/colors";
      base16_tmux_config = ".local/share/tmux_base16_theme.conf";
      base16_shell_src = "${pkgs.base16.out}/share/shell/base16_switch.zsh";

      nvim_runtime_dest = ".local/share/nvim/site/pack/nix/start/base16";
      nvim_runtime_src = "${pkgs.base16.out}/share/nvim";

      shellAliases = mapAttrs (_: v: "color ${v}") cfg.speedDial;
    in {
      options.nav.modules.base16 = {
        enable = mkEnableOption "Base16 integration.";
        withNvim = mkOption {
          default = false;
          type = types.bool;
          description = "Setup nvim integration";
        };
        withZsh = mkOption {
          default = true;
          type = types.bool;
          description = "Setup Zsh integration";
        };
        withTmux = mkOption {
          default = false;
          type = types.bool;
          description = "Setup Tmux integration";
        };
        nvimUpdateArgs = mkOption {
          type = types.str;
          description = "script to run with nvim runtime to update nvim env";
        };
        speedDial = mkOption {
          type = types.attrs;
          default = { };
          description = "themes to create alias for {alias = themeName}";
        };
      };

      config = mkMerge [
        # Include Package
        (mkIf cfg.enable { home.packages = [ pkgs.base16 pkgs.nvim-ctrl ]; })

        # Setup Tmux
        (mkIf enableTmux {
          home.sessionVariables.BASE16_TMUX_THEME_DIR = base16_tmux_dir;
          home.sessionVariables.BASE16_TMUX_THEME_PATH = base16_tmux_config;
          programs.tmux.extraConfig = "source ${base16_tmux_config}";
        })

        # Setup Nvim
        (mkIf cfg.withNvim {
          home.sessionVariables.BASE16_NVIM_UPDATE_ARGS = cfg.nvimUpdateArgs;
          home.file."${nvim_runtime_dest}".source = nvim_runtime_src;
        })

        # Setup Zsh
        (mkIf enableZsh {
          home.sessionVariables.BASE16_SHELL_DIR = base16_shell_dir;
          home.sessionVariables.BASE16_SHELL_CONFIG = "$HOME/.base16";
          programs.zsh.shellAliases = shellAliases;
          programs.zsh.initExtra = ". ${base16_shell_src}";
        })
      ];
    };
}
