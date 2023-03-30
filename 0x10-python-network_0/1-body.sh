#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: $0 <url>"
  exit 1
fi

url=$1

response=$(curl -s -o /dev/null -w "%{https_code}" $url)

if [ $response -eq 200 ]; then
  body=$(curl -s $url)
  echo $body
else
  echo "$response"
fi
