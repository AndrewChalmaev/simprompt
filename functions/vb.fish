function vb --description 'VirtualBox start script'
  sudo chown andrew:andrew /dev/sd*
  ll /dev/sd*
  kstart VirtualBox $argv 2>/dev/null
end
