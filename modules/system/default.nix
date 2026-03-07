{ ... }:

{
  imports = [
    # ./example.nix - add your modules here
  ];

  environment.systemPackages = [
    # pkgs.neovim - hydenix's vscode version
    # pkgs.userPkgs.vscode - your personal nixpkgs version
  ];
}
