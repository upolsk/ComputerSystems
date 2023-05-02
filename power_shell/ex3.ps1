#Create a Powershell script which gets a several numbers as parameters and writes out the smallest one.
if($args.Count -le 1)
{
Write-Output "We need more than 1 parameter!"
exit 1
}
else 
{
$args | sort-object -Descending | Select -last 1
}

