function vb --description 'VirtualBox settings'
  sudo modprobe -r kvm_intel
  sudo chown andrew:andrew /dev/sd*
  ll /dev/sd*
end
