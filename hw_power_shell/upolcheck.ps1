<#read the file, count the words, if it not 2, redirect to notvalid.txt
if yes, check if the first is exist in majors.txt and second in representatives.txt
if yes, add a number
I suggest to use an array#>

$majors = @()
$majorCnt = @()
foreach ($major in Get-Content majors.txt) {
    $majors += $major
    $majorCnt += 0
}


$representatives = @()
$representativeCnt = @()
foreach ($representative in Get-Content representatives.txt) {
    $representatives += $representative
    $representativeCnt += 0
}


Clear-Content notvalid.txt


foreach ($vote in Get-Content votes.txt) {

   #Write-Host $vote

 
    $names = $vote.split(' ')

    
    if ($names.Count -eq 2) {
        
        
        if ($majors -Contains $names[0]) {
            $majorCnt[$majors.IndexOf($names[0])] += 1;
        }
        else {
            Add-Content notvalid.txt $vote
            continue
        }

             if ($representatives -Contains $names[1]) {
            $representativeCnt[$representatives.IndexOf($names[1])] += 1;
        }
        else {
            Add-Content notvalid.txt $vote
            continue
        }

    }
    else {
        Add-Content notvalid.txt $vote
        continue
    }
}


for ($i = 0; $i -lt $majors.Count; $i++) {
    Write-Host $majors[$i] $majorCnt[$i]
}


Write-Host " "


for ($i = 0; $i -lt $representatives.Count; $i++) {
    Write-Host $representatives[$i] $representativeCnt[$i]
}

<#
John 2
Patrick 0
Sophie 1
 
Gergia 0
Laura 1
Luke 2
#>


<#
PS C:\Users\User\Downloads> Get-Content notvalid.txt
Smith Luke
fsfj hsfh sjkf hfh
#>