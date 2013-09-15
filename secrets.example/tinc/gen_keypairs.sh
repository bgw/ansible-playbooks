#!/bin/sh
NUMBITS=2048

if [ $# -eq 0 ]; then
    echo "USAGE: $0 example.com example2.com ..."
    echo ""
    echo "    This tool generates public and private keys for tinc hosts. Run" \
             "it for each host you want to use with tinc. Don't share the" \
             "private keys with anyone, and don't use the example keypairs." \
         | fmt -c
fi

for HOSTNAME in "$@"; do
    openssl genrsa $NUMBITS > "$HOSTNAME.priv"
    openssl rsa -in "$HOSTNAME.priv" -pubout > "$HOSTNAME.pub"
done
