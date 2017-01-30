$ErrorActionPreference = 'Stop';

$options = @{
  unzipLocation = 'C:\tools\'
}
$packageParameters = @{
  packageName   = 'solr'
  url           = 'http://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.zip'
  softwareName  = 'solr*'
  checksum      = 'fdea1d2c253dda792a6065451d50ad6c7c50da10'
  checksumType  = 'sha1'
}

function Set-ChocolateyPackageOptions {
    param(
        [Parameter(Mandatory=$True,Position=1)]
        [hashtable] $options
    )
    $packageParameters = $env:chocolateyPackageParameters;
 
    if ($packageParameters) {
        $parameters = ConvertFrom-StringData -StringData $env:chocolateyPackageParameters.Replace(" ", "`n")
        $parameters.GetEnumerator() | ForEach-Object {
           $options[($_.Key)] = ($_.Value)
        }
    }
}

Install-ChocolateyZipPackage -PackageName $packageParameters['packageName']  -Url $packageParameters['url'] -UnzipLocation $options['unzipLocation']
