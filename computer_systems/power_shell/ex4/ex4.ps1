<#Create a Powershell script, which gets a file name and a number (N) as an argument and
writes out the first and last N lines of the file! Check the existance of the file!#>
if($args.Count -eq 2) {
$fileName=$args[0]
$N=$args[1]
if(Test-Path $fileName) {
Get-Content  $fileName | select -First $N
Get-Content  $fileName | select -Last $N
} else {
Write-Output "File doesn't exist!"
}

} else {
    Write-Output "We need 2 parameters!"
}