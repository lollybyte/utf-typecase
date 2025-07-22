{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    python3
    # xhost: Required on Linux to grant PyAutoGUI access to X11
    xorg.xhost # Not needed on macOS or Windows
  ];
  shellHook = ''
    # Activate Python virtual environment
    source setup.sh
    # Allow current user to access X server (temporary)
    xhost +SI:localuser:$(whoami)
    # Tab completion for utf-typecase CLI
    eval "$(_UTF_TYPECASE_COMPLETE=bash_source utf-typecase)"
  '';
}