#!/bin/bash
set -e
source /build/buildconfig
set -x

## Install openvpn
$minimal_apt_get_install openvpn

## Enable openvpn-client
mkdir /etc/service/openvpn-client
cp /build/runit/openvpn-client /etc/service/openvpn-client/run