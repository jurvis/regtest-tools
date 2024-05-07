start:
    docker compose up

bootstrap:
    just _submodules
    docker compose -f docker-compose-nodes.yml up --wait
    just _fund-wallet

bitcoincli := "bitcoin-cli -regtest -rpcuser=bitcoin -rpcpassword=local123"

_submodules:
  git submodule update --init --recursive

_fund-wallet:
    #!/bin/bash
    set -x
    {{ bitcoincli }} -named createwallet wallet_name=test blank=true
    addr=$({{ bitcoincli }} -rpcwallet=test getnewaddress | xargs)
    # Mine a some blocks to our wallet to get electrs going
    {{ bitcoincli }} generatetoaddress 101 $addr
    {{ bitcoincli }} generatetoaddress 100 bcrt1qrt37mr0kf2th5dgsqq6k87tl8k220e7nj4ts5u
