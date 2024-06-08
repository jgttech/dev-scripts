function port-kill {
  lsof -i tcp:$1 | awk 'NR!=1 {print $2}' | xargs kill;
  sudo kill $(sudo lsof -i:$1 -t) &> /dev/null;
}

function killport {
  sudo -S fuser -k ${1}/tcp
  sudo -S fuser -k ${1}/udp
}

function pihole {
  ssh arez@192.168.1.112
}
