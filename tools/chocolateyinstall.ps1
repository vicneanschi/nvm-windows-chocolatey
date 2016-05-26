
$ErrorActionPreference = 'Stop';


$packageName= 'nvm-windows'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/coreybutler/nvm-windows/releases/download/1.1.0/nvm-setup.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  validExitCodes= @(0)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'

  softwareName  = 'nvm-windows*'
  checksum      = ''
  checksumType  = 'md5'
  checksum64    = ''
  checksumType64= 'md5'
}




Install-ChocolateyZipPackage $packageName $url $toolsDir














