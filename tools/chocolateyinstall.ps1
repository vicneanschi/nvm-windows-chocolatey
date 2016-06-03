$packageName= 'nvm'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/coreybutler/nvm-windows/releases/download/1.1.0/nvm-setup.zip'
$fileLocation = Join-Path $toolsDir 'nvm-setup.exe'

Install-ChocolateyZipPackage $packageName $url $toolsDir

Install-ChocolateyInstallPackage -PackageName $packageName -FileType 'EXE' `
	-SilentArgs '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' `
	-File $fileLocation `
	-ValidExitCodes = @(0)