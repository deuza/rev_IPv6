#!/bin/sh

IFACE="eno1"

ADDRS=$(ip -6 addr show dev "$IFACE" scope global | awk '/inet6/{print $2}' | cut -d/ -f1)
COUNT=$(echo "$ADDRS" | wc -l)

if [ "$COUNT" -eq 1 ]; then
    IPV6="$ADDRS"
else
    echo "IPv6 globales disponibles sur $IFACE :"
    i=1
    echo "$ADDRS" | while read -r addr; do
        echo "  $i) $addr"
        i=$((i + 1))
    done
    printf "Choix : "
    read -r choix
    IPV6=$(echo "$ADDRS" | sed -n "${choix}p")
fi

PTR=$(echo "$IPV6" | sed 's/://g' | sed 's/\(.\)/\1./g' | rev | sed 's/^\.//')
echo "IPv6 : $IPV6"
echo "PTR  : ${PTR}.ip6.arpa."
exit 0
