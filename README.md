## Mybase16

Nix home-manager module to setup base16 for neovim, zsh and others.

## Flake

include `inputs.base16.packages`
```nix
{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    base16.url = "path:///Users/tami5/repos/neovim/base16";
    base16.inputs.nixpkgs.follows = "nixpkgs";
  };
  outputs = { self, ... }@inputs: { ... }
}
```

Checkout how to setup using ./default.nix;

```nix
tami5.modules.base16 = {
      enable = true;
      withTmux = true;
      withNvim = true;
      nvimUpdateArgs = "call v:lua.user.pack.theme.checkscheme()";
      # d1 => base16_switch $themename
      speedDial = {
        d1 = "tomorrow-night";
        d2 = "tokyonight";
        d3 = "gruvbox-dark-medium";
        d4 = "ashes";
        d5 = "default-dark";
        d6 = "nord";
        d7 = "eighties";
        l1 = "equilibrium-gray-light";
        l2 = "atelier-estuary-light";
        l3 = "atelier-sulphurpool-light";
      };
    };
```

The following environment variables need to set manually if ./default.nix is not used

```bash
export BASE16_TMUX_THEME_DIR="${pkgs.base16.out}/share/tmux/colors";;
export BASE16_SHELL_DIR="${pkgs.base16.out}/share/shell/scripts";;
export BASE16_NVIM_UPDATE_ARGS="echo hi"; # call any function to notify nvim of theme change
export BASE16_SHELL_CONFIG="$HOME/.base16";
```

Additionally:

- `"${pkgs.base16.out}/share/nvim/*"` needs be added to nvim runtime.
- `"${pkgs.base16.out}/share/shell/plugin.zsh*"` need to be source in zshrc

## TODOs

- [ ] manually add all schema source to managed by nix
- [ ] enable customization over italics and transparency

## Credits

- [Base16](https://github.com/chriskempson/base16)
- [base16-vim](https://github.com/chriskempson/base16-vim)
- [nvim-base16.lua](https://github.com/norcalli/nvim-base16.lua)
- [wincent](https://github.com/wincent)
