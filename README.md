
# splunk_downloader

This Bash script list all download links for the latest version of Splunk Enterprise and the Universal Forwarder.

The way this script works is that it looks for all lines containing "data-link" in either https://www.splunk.com/en_us/download/splunk-enterprise.html (for Splunk Enterprise) or https://www.splunk.com/en_us/download/universal-forwarder.html (for Universal Forwarder). You can test it yourself:

```
curl https://www.splunk.com/en_us/download/splunk-enterprise.html | grep "data-link"
```

## Usage

The first command line argument is either **full** (for Splunk Enterprise) or **uf** (for Universal Fowarder).

```
$ bash splunk-downloader.sh 
Usage: splunk-downloader.sh [full|uf]
Example: splunk-downloader.sh full
```
## Examples

List all Splunk Enterprise links:
```
$ bash splunk-downloader.sh full
https://download.splunk.com/products/splunk/releases/9.4.0/windows/splunk-9.4.0-6b4ebe426ca6-windows-x64.msi
https://download.splunk.com/products/splunk/releases/9.4.0/linux/splunk-9.4.0-6b4ebe426ca6-linux-amd64.tgz
https://download.splunk.com/products/splunk/releases/9.4.0/linux/splunk-9.4.0-6b4ebe426ca6.x86_64.rpm
https://download.splunk.com/products/splunk/releases/9.4.0/linux/splunk-9.4.0-6b4ebe426ca6-linux-amd64.deb
https://download.splunk.com/products/splunk/releases/9.4.0/osx/splunk-9.4.0-6b4ebe426ca6-darwin-intel.tgz
https://download.splunk.com/products/splunk/releases/9.4.0/osx/splunk-9.4.0-6b4ebe426ca6-darwin-intel.dmg
```

Using this script in conjunction with wget to download the latest deb package:
```
$ wget $(bash splunk-downloader.sh full | grep linux-amd64.deb)
https://download.splunk.com/products/splunk/releases/9.4.0/linux/splunk-9.4.0-6b4ebe426ca6-linux-amd64.deb
```

List all Universal Forwarder links:

```
$ bash splunk-downloader.sh uf
https://download.splunk.com/products/universalforwarder/releases/9.4.0/windows/splunkforwarder-9.4.0-251651b291fe-windows-x86.msi
https://download.splunk.com/products/universalforwarder/releases/9.4.0/windows/splunkforwarder-9.4.0-6b4ebe426ca6-windows-x64.msi
https://download.splunk.com/products/universalforwarder/releases/9.4.0/linux/splunkforwarder-9.4.0-251651b291fe.s390x.rpm
https://download.splunk.com/products/universalforwarder/releases/9.4.0/linux/splunkforwarder-9.4.0-251651b291fe-linux-s390x.tgz
https://download.splunk.com/products/universalforwarder/releases/9.4.0/linux/splunkforwarder-9.4.0-251651b291fe-linux-ppc64le.tgz
https://download.splunk.com/products/universalforwarder/releases/9.4.0/linux/splunkforwarder-9.4.0-251651b291fe.ppc64le.rpm
https://download.splunk.com/products/universalforwarder/releases/9.4.0/linux/splunkforwarder-9.4.0-6b4ebe426ca6-linux-amd64.deb
https://download.splunk.com/products/universalforwarder/releases/9.4.0/linux/splunkforwarder-9.4.0-6b4ebe426ca6.x86_64.rpm
https://download.splunk.com/products/universalforwarder/releases/9.4.0/linux/splunkforwarder-9.4.0-6b4ebe426ca6-linux-amd64.tgz
https://download.splunk.com/products/universalforwarder/releases/9.4.0/linux/splunkforwarder-9.4.0-6b4ebe426ca6.aarch64.rpm
https://download.splunk.com/products/universalforwarder/releases/9.4.0/linux/splunkforwarder-9.4.0-6b4ebe426ca6-linux-arm64.tgz
https://download.splunk.com/products/universalforwarder/releases/9.4.0/linux/splunkforwarder-9.4.0-6b4ebe426ca6-linux-arm64.deb
https://download.splunk.com/products/universalforwarder/releases/9.4.0/osx/splunkforwarder-9.4.0-6b4ebe426ca6-darwin-universal2.tgz
https://download.splunk.com/products/universalforwarder/releases/9.4.0/osx/splunkforwarder-9.4.0-6b4ebe426ca6-darwin-universal2.dmg
https://download.splunk.com/products/universalforwarder/releases/9.4.0/osx/splunkforwarder-9.4.0-6b4ebe426ca6-darwin-intel.dmg
https://download.splunk.com/products/universalforwarder/releases/9.4.0/osx/splunkforwarder-9.4.0-6b4ebe426ca6-darwin-intel.tgz
https://download.splunk.com/products/universalforwarder/releases/9.4.0/freebsd/splunkforwarder-9.4.0-251651b291fe-freebsd14-amd64.txz
https://download.splunk.com/products/universalforwarder/releases/9.4.0/freebsd/splunkforwarder-9.4.0-251651b291fe-freebsd14-amd64.tgz
https://download.splunk.com/products/universalforwarder/releases/9.4.0/freebsd/splunkforwarder-9.4.0-251651b291fe-freebsd13-amd64.txz
https://download.splunk.com/products/universalforwarder/releases/9.4.0/freebsd/splunkforwarder-9.4.0-251651b291fe-freebsd13-amd64.tgz
https://download.splunk.com/products/universalforwarder/releases/9.4.0/solaris/splunkforwarder-9.4.0-251651b291fe-solaris-sparc.p5p
https://download.splunk.com/products/universalforwarder/releases/9.4.0/solaris/splunkforwarder-9.4.0-251651b291fe-solaris-sparc.tar.Z
https://download.splunk.com/products/universalforwarder/releases/9.4.0/solaris/splunkforwarder-9.4.0-251651b291fe-solaris-amd64.p5p
https://download.splunk.com/products/universalforwarder/releases/9.4.0/solaris/splunkforwarder-9.4.0-251651b291fe-solaris-amd64.tar.Z
https://download.splunk.com/products/universalforwarder/releases/9.4.0/aix/splunkforwarder-9.4.0-251651b291fe-aix-powerpc.tgz
```
