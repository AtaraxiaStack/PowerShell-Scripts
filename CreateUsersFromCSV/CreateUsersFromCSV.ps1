
$USER_LIST = Import-Csv -Path .\users.csv

foreach ($row in $USER_LIST) {
    $first    = $row.FirstName.ToLower()
    $last     = $row.LastName.ToLower()
    $username = $row.Username
    $password = ConvertTo-SecureString $row.Password -AsPlainText -Force

    Write-Host "Creating user: $username" -BackgroundColor Black -ForegroundColor Cyan

    New-ADUser -AccountPassword $password `
        -GivenName $row.FirstName `
        -Surname $row.LastName `
        -DisplayName $username `
        -Name $username `
        -EmployeeID $username `
        -PasswordNeverExpires $false `
        -Path "ou=_USERS,$(([ADSI]"").distinguishedName)" `
        -Enabled $true
}