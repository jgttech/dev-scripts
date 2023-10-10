function port-kill() {
  lsof -i tcp:$1 | awk 'NR!=1 {print $2}' | xargs kill;
  sudo kill $(sudo lsof -i:$1 -t) &> /dev/null;
}
