#!/bin/bash

usage(){
    echo "Usage: $0 [full|uf]"
    echo "Example: $0 full"
    exit 1
}

if [ "$1" = "full" ]; then
   url="https://www.splunk.com/en_us/download/splunk-enterprise.html"
elif [ "$1" = "uf" ]; then
   url="https://www.splunk.com/en_us/download/universal-forwarder.html"
else
   usage
fi

curl -s --connect-timeout 10 --max-time 10 $url | grep -E -o "data-link=\"https://[^\"]+\"" | cut -c12- | rev | cut -c2- | rev
