function vb --description 'VirtualBox start script'
  sudo modprobe -r kvm_intel
  sudo chown andrew:andrew /dev/sd*
  ll /dev/sd*
  kstart VirtualBox $argv
end
