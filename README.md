
# splunk_downloader

This Bash script downloads the latest Splunk version to the current directory using `wget`. Both Splunk Enterprise and Universal Forwarder are supported.

The way this scripts works is that it extracts the download links from the page source of https://www.splunk.com/en_us/download/splunk-enterprise.html (for Splunk Enterprise) and https://www.splunk.com/en_us/download/universal-forwarder.html (for Universal Forwarder).

## Usage

The first command line argument is either **full** (for Splunk Enterprise) or **uf** (for Universal Fowarder).

The second command line argument specifies the platform. Currently supported by this script are **deb**, **rpm** and **tgz** Linux and **MSI** for Windows.

```
[root@centos ~]# bash splunk-download.sh 
Usage: splunk-download.sh [full|uf] [deb|rpm|tgz|msi]
```
## Examples

### Download the latest DEB installer for Splunk Enterprise:
```
[root@centos ~]# bash splunk-download.sh full deb
```
### Download the latest MSI installer for the Universal Forwarder:
```
[root@centos ~]# bash splunk-download.sh uf msi
```
