if status is-interactive
  # Commands to run in interactive sessions can go here

  set PATH "/opt:$HOME/bin:$HOME/.local/bin:$PATH"
  export PATH
  export PAGER="/usr/bin/most"

  function fish_greeting
    echo (set_color brWhite)$(date +'%a %b %d %Y %H:%M:%S %Z')\
     (set_color brGreen)"  "$(uname -sr)\
     (set_color White)"  🐟"$(fish --version | awk '{print $3}')\
     (set_color brWhite)"  "$(free --mega | tail -n 2 | head -n 1 | awk '{print $7}')"M"
  end
end

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/andrew/.opam/opam-init/init.fish' && source '/home/andrew/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true
# END opam configuration
