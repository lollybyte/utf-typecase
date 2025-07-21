{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    python3
    xorg.xhost
  ];
  shellHook = ''
    source setup.sh
    xhost +SI:localuser:$(whoami)
  '';

}

