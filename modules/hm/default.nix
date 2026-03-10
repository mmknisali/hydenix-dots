{ inputs, ... }:

{
  imports = [
    # ./example.nix - add your modules here
      ./lazy.nix
  ];

  # home-manager options go here
  home.packages = [
    # pkgs.vscode - hydenix's vscode version
    # pkgs.userPkgs.vscode - your personal nixpkgs version
  ];

  #monitor config
  hydenix.hm.hyprland.monitors.overrideConfig = ''
  monitor=,preferred,auto,1.25
'';

#direnv 
hydenix.hm.shell.zsh.configText = ''
  eval "$(direnv hook zsh)"

'';


  # hydenix home-manager options go here
  hydenix.hm.enable = true;
  hydenix.hm.editors.neovim = false;
 # Visit https://github.com/richen604/hydenix/blob/main/docs/options.md for more options
}
