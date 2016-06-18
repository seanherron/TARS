#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

if ! [ -x "$(command -v salt-minion)" ]; then
  echo "Salt minion not installed, installing salt minion"
  apt-get install -y curl
  curl -o /tmp/SALTSTACK-GPG-KEY.pub -L https://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest/SALTSTACK-GPG-KEY.pub
  apt-key add -y /tmp/SALTSTACK-GPG-KEY.pub
  echo "deb http://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest xenial main" > /etc/apt/sources.list.d/saltstack.list
  apt-get update -y
  apt-get install salt-minion -y --allow-unauthenticated
fi

if [ -x "$(command -v salt-minion)" ]; then
  echo "Setting up Salt"
  echo "file_client: local" > /etc/salt/minion.d/file_client.conf
  echo -e "file_roots:\n  base:\n    - /home/sean/.tars/base" > /etc/salt/minion.d/file_roots.conf
  service salt-minion stop
  salt-call --local state.highstate
  echo "To set your theme, run the following commands:"
  echo 'xfconf-query -c xsettings -p /Net/ThemeName -s "Numix-Holo"'
  echo 'xfconf-query -c xfwm4 -p /general/theme -s "Numix-Holo"'
  echo 'xfconf-query -c xsettings -p /Net/IconThemeName -s "Numix-Circle"'
fi
