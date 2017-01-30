$ErrorActionPreference = 'Stop';

$packageName = 'solr'
$softwareName = 'solr*'

Uninstall-ChocolateyZipPackage $packageName
