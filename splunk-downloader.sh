#!/bin/bash

# Depending on the user input, this script will download Splunk Enterprise or the Universal Forwarder from splunk.com.
# Furthermore, the user can choose to download the installer either in the RPM, TGZ, DEB or MSI format.
# The download will be placed inside the current directory.

# For troubleshooting, use these commands:
# curl "https://www.splunk.com/en_us/download/splunk-enterprise.html" | grep "data-link"
# curl "https://www.splunk.com/en_us/download/universal-forwarder.html" | grep "data-link"

usage(){
   echo "Usage: $0 [full|uf] [rpm|tgz|deb|msi]"
   echo "Example: $0 full rpm"
   exit 1
}

if [ "$1" = "full" ]; then
   url="https://www.splunk.com/en_us/download/splunk-enterprise.html"
elif [ "$1" = "uf" ]; then
   url="https://www.splunk.com/en_us/download/universal-forwarder.html"
else
   usage
fi

if [ "$2" = "rpm" ]; then
   link_tail="\.x86_64\.rpm"
elif [ "$2" = "tgz" ]; then
   link_tail="-Linux-x86_64\.tgz"
elif [ "$2" = "deb" ]; then
   link_tail="-linux-2\.6-amd64\.deb"
elif [ "$2" = "msi" ]; then
   link_tail="-x64-release\.msi"
else
   usage
fi

content=`curl -s --connect-timeout 10 --max-time 10 $url`
link=`echo $content | grep -E -o "data-link=\"https://[^\"]+${link_tail}\"" | cut -c12- | rev | cut -c2- | rev`
if [[ "$link" == "https://"* ]]; then
   echo "Download link: $link"
   echo ""
   # If you receive SSL certitifcate errors, then use --no-check-certificate.
   wget $link
else
   echo "Error: Could not get download link from $url. Try again."
fi
