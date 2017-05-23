Import-Module FileServerResourceManager
$paths = @{}
$pathlist = Get-FsrmQuota | select @{Name="{#QPATH}";Expression={$_.Path}}

$paths.Add("data", $pathlist)
$paths | ConvertTo-Json
