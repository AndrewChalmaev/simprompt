function cat --wraps='batcat -p' --description 'alias cat=batcat -p'
    batcat -p $argv
end
