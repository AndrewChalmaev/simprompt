function up --description 'Update & upgrade'
  if which dnf 1&>/dev/null
    sudo dnf up --refresh -y
  else
    sudo apt update -y
    sudo apt upgrade -y
    sudo apt autoremove -y
  end
end
