# Regtest Tools

This repository contains a collection of tools for working with Bitcoin Core in regtest mode.

## Requirements

1. just (`brew install just`)
2. Docker

## Getting Started

1. Clone this repository
2. Run `just bootstrap` to start the regtest Bitcoin Core node and electrs. This will also generate a wallet and mine some blocks.
3. Run `just start` to start the regtest Bitcoin Core node, electrs, and Mempool.space frontend and backend.

## Usage

When running `just start`, you can do the following:

- Access the Mempool.space frontend at http://localhost:5000
- Use the Bitcoin Core RPC at `bitcoin-cli -regtest -rpcuser=bitcoin -rpcpassword=local123 <command>`
