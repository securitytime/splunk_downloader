
# splunk_downloader

This Bash script downloads the latest Splunk version to the current directory using `wget`.

For downloading Splunk Enterprise installers, use **full** as first command line argument. For Universal Forwarder installers, use **uf** instead.

The second command line argument specifies the platform. Currently supported by this script are RPM, TGZ and DEB for Linux and MSI for Windows.

## Usage

```
[root@centos ~]# bash splunk-download.sh 
Usage: splunk-download.sh [full|uf] [rpm|tgz|deb|msi]
Example: splunk-download.sh full rpm
```
