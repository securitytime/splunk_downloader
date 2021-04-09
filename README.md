# splunk_downloader

This Bash script downloads the latest Splunk version to the current directory using `wget`.

This script requires two command line arguments:

1. Splunk platform: full | uf

- full stands for Splunk Enterprise.
- uf stands for Universal Forwarder.

2. Installer: rpm | tgz | deb | msi


## Usage

```
[root@centos ~]# bash splunk-download.sh 
Usage: splunk-download.sh [full|uf] [rpm|tgz|deb|msi]
Example: splunk-download.sh full rpm
```
