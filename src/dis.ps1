# source  https://blog.doenselmann.com/proxy-settings-mit-powershell-konfigurieren/
# author  Michael Dönselmann
# licence CC BY-SA 4.0 https://creativecommons.org/licenses/by-sa/4.0/deed.de
# define proxy settings
$proxyserver = "proxy.example.com"
$proxyport = "8080"

# registry path for proxy settings
$path = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings"
$value = "ProxyEnable"
$key = (Get-ItemProperty -Path $path -Name $value).$value
$proxy = $proxyserver + ":" + $proxyport

if ($key -eq "1" )
{
# disable proxy
Set-ItemProperty -Path $path -Name ProxyEnable -Value 0
}

else

{
# enable proxy
Set-ItemProperty -Path $path -Name ProxyEnable -Value 0
}