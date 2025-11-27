#!/usr/bin/env bash

get_status() {
  iface=$1
  if ip link show "$iface" up &>/dev/null && ip addr show "$iface" | grep -q "inet "; then
    # Just show the interface name, no IP
    echo "$iface"
    exit 0
  fi
}

# check Ethernet first
get_status eno2
# check Wi-Fi next
get_status wlo1

# if neither is up
echo "Offline"
