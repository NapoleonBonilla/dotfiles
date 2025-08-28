#!/bin/bash
# set -ex

if !type keeper &>/dev/null || !type bw &>/dev/null; then
    case "$(uname -s)" in
    Darwin)
        brew install keeper-commander
        ;;
    Linux)
        nix-env -iA nixpkgs.keeper-commander
        ;;
    *)
        echo "unsupported OS"
        exit 1
        ;;
    esac
fi
