#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

DIR=$(dirname "$(readlink -f "$0")")

CONFIG_INSTALL_LOCATION=/etc/ordvitsh.conf
BIN_INSTALL_LOCATION=/usr/local/bin/ordvitsh
DATABASE_INSTALL_LOCATION=/usr/share/ordvitsh.d

cp ${DIR}/etc/ordvitsh.conf ${CONFIG_INSTALL_LOCATION}
cp ${DIR}/usr/local/bin/ordvitsh ${BIN_INSTALL_LOCATION}
cp -r ${DIR}/usr/share/ordvitsh.d/ ${DATABASE_INSTALL_LOCATION}
