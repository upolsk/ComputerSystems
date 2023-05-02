<#Create a powershell script which gets 3 integer numbers as parameters, and gives back the result of the following equation: (x1+x2)*x3  Write out the result

.\first.ps1 2 6 3 //(2+8)*3#>
if($args.Count -ne 3)
{
Write-Output "We need three parameter!"
}
else
{
($args[0]+$args[1])*$args[2]
}
