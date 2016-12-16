$ErrorActionPreference = 'Stop';

$packageName= 'apache-solr'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.zip'
$url64      = ''

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE_MSI_OR_MSU'
  url           = $url
  url64bit      = $url64

  softwareName  = 'apache-solr*'

  checksum      = ''
  checksumType  = 'sha256'
  checksum64    = ''
  checksumType64= 'sha256'


}
Install-ChocolateyZipPackage $packageName $url $toolsDir $url64
