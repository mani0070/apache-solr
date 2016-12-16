$ErrorActionPreference = 'Stop';

$packageName = 'apache-solr'
$softwareName = 'apache-solr*'

Uninstall-ChocolateyZipPackage $packageName