# Step 22 - Final Validation Log

## Commands Used

CLIENT01:
- whoami
- nltest /dsgetdc:relentixtest.local
- gpresult /r
- net use
- net accounts
- nslookup relentixtest.local
- explorer.exe \\DC01\CompanyData
- dsa.msc

DC01:
- Get-SmbShare
- Get-SmbShareAccess -Name CompanyData
- icacls C:\Shares\CompanyData
- gpupdate /force
- auditpol /get /category:*
- Get-WinEvent -LogName Security -MaxEvents 20

## Validation Results

- Domain controller discovery successful
- Group Policy applied successfully
- Drive mapping visible and accessible
- Shared folder access confirmed
- Share and NTFS permissions verified
- Security policy confirmed
- Audit policy confirmed
- Active Directory tools functioning from CLIENT01
- Delegated administration confirmed

## Outcome
The environment validated successfully end-to-end.