
# splunk_downloader

This Bash script downloads the latest Splunk version to the current directory using `wget`.

For downloading Splunk Enterprise installers, use **full** as first command line argument. For Universal Forwarder installers, use **uf** instead.

The second command line argument specifies the platform. Currently supported by this script are RPM, TGZ and DEB for Linux and MSI for Windows.

## Usage

```
[root@centos ~]# bash splunk-download.sh 
Usage: splunk-download.sh [full|uf] [rpm|tgz|deb|msi]
```
## Examples

### Download the latest RPM installer for Splunk Enterprise:
```
[root@centos ~]# bash splunk-download.sh full rpm
```
This command downloads https://download.splunk.com/products/splunk/releases/9.1.0.2/linux/splunk-9.1.0.2-b6436b649711.x86_64.rpm.
(At the time of writing, 9.1.0.2 is the latest Splunk version.)
### Download the latest MSI installer for the Universal Forwarder:
```
[root@centos ~]# bash splunk-download.sh uf msi
```
This command downloads https://download.splunk.com/products/universalforwarder/releases/9.1.0.1/windows/splunkforwarder-9.1.0.1-77f73c9edb85-x64-release.msi.
