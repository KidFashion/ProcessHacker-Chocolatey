try {
  $package = 'processhacker'
  $PackageVersion = "2.32"
  $url = "http://processhacker.googlecode.com/files/processhacker-2.32-bin.zip"
  $destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 

  Install-ChocolateyZipPackage $package -url $url -unzipLocation $destination
} catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw
}