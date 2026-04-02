# Step 18 — Auditing and Logging Log

## Commands Used

gpupdate /force  
auditpol /get /category:*  
Get-WinEvent -LogName Security -MaxEvents 25  

## Audit Categories Enabled

- Audit Logon
- Audit Account Lockout
- Audit User Account Management
- Audit Security Group Management

## Verification

- Group Policy applied successfully
- Audit settings confirmed with auditpol
- Security log events reviewed in Event Viewer
- Failed logon and lockout activity generated and validated

## Result

Auditing is now enabled for core authentication and account-management activity in the domain.