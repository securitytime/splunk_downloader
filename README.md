# splunk_downloader

This Bash script downloads the latest Splunk version to the current directory..

The following platforms are supported (1st command line argument):

- Splunk Enterprise ("full")
- Splunk Universal Forwarder ("uf")

The following installers are supported (2nd command line argument):

- rpm
- tgz
- deb
- msi

## Usage

```
[root@centos ~]# bash splunk-download.sh 
Usage: splunk-download.sh [full|uf] [rpm|tgz|deb|msi]
Example: splunk-download.sh full rpm
```
