function td --wraps="nmcli conn del $(nmcli conn show | grep [Oo]utline | awk '{print $4}')"
  nmcli conn del $(nmcli conn show | grep [Oo]utline | awk '{print $4}')
end
