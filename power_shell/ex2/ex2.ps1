# Create a powershell script, which counts how many character we have in a file without spaces and line-breaks. The filename is a parameter.

if($args.Count -ne 1)
{
Write-Output "We need one parameter!"
exit 1
}
$fileName=$args[0]
if( !(Test-Path $fileName))
{
Write-Output "File doesn't exist!"
exit 1
}
else 

{
   $file = $fileName.Trim()
   Get-Content $file | Measure-Object -Character -IgnoreWhiteSpace
    
}