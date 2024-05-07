#!/bin/sh

set -euo pipefail

exec /usr/bin/bitcoind \
	-conf="$HOME"/bitcoin.conf \
	-datadir=$HOME \
	-rpcbind=0 \
	$@
