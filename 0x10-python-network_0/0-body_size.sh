#!/bin/bash

#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: $0 <url>"
  exit 1
fi

url=$1

size=$(curl -s -o /dev/null -w "%{size_download}" $url)

echo "Size of the response body: $size bytes"
