#This prompts for an AD group, outputs a count of users in the group, and prompts to run again or quit#

do {


$group = Read-Host -Prompt group

Get-ADGroupMember "$group" | Where objectclass -eq "user" | select name | export-csv -Path $env:USERPROFILE\Desktop\$group.csv -NoClobber




$response = Read-Host "Again?"


}

while ($response -eq "y")