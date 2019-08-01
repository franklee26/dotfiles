function ipinfo
  if count $argv > /dev/null
    curl -s 'ipinfo.io/'$argv[1]
  else
    curl -s 'ipinfo.io'
  end
end
