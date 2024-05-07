#!/bin/sh

exec bin/electrs \
    --network "regtest" \
    --cookie "bitcoin:local123" \
    --jsonrpc-import \
    --log-filters INFO \
    --http-addr 0.0.0.0:9000 \
    --electrum-rpc-addr 0.0.0.0:60401 \
	$@
