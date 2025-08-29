function tb --wraps='nc termbin.com 9999 | xsel -b | echo ' --wraps='nc termbin.com 9999 | xsel -b ' --description 'alias tb nc termbin.com 9999 | xsel -b '
  nc termbin.com 9999 | xsel -b  $argv
end
