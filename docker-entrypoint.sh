#!/bin/sh

if [ -z "$node_key" ]; then
	echo "-e node_key is missing. Exiting"
	exit 1
fi

if [ -z "$external_ip" ]; then
	echo "-e external_ip is missing. Exiting"
	exit 1
fi

_rpcUserName=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 12 ; echo '')
_rpcPassword=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 32 ; echo '')

if [ ! -d "/opt/reden/.redencore/reden.conf" ]; then
	mkdir /opt/reden/.redencore

echo "rpcuser=${_rpcUserName}
rpcpassword=${_rpcPassword}
rpcallowip=127.0.0.1
listen=1
server=1
onlynet=ipv4
maxconnections=64
masternode=1
externalip=${external_ip}
port=13058
masternodeprivkey=${node_key}
" > /opt/reden/.redencore/reden.conf

fi

redend -printtoconsole
