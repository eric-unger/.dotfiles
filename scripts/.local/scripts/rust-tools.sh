#!/bin/bash

# Install or update Rust tools using Cargo

cargo install --locked bat
bat --completion bash

cargo install exa
cargo install fd-find
cargo install starship --locked
cargo install ripgrep
cargo install tokei
cargo install ytop
cargo install tealdeer
cargo install zoxide --locked
cargo install --locked --bin jj jj-cli
cargo install just
