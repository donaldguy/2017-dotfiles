function vnc() {
  ssh -N -L5900:donald.local:5900 office &
  sleep 1
  open vnc://donald@localhost
}

function desktoptun {
  ssh -N -L 9296:donald.local:22 office &
}
