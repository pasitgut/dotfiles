#!/usr/bin/env bash

set -e

echo "Installing bun..."
curl -fsSL https://bun.com/install | bash

echo "Installing nvm..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash

echo "Installing Rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "Installing Curlie..."
curl -sS https://webinstall.dev/curlie | bash

echo "Installing Atuin..."
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh -s -- --non-interactive
