# Step 21 - Help Desk Delegation Validation (Client-Side)

## Objective
Validate that delegated Help Desk permissions function correctly from a domain-joined client machine using RSAT tools.

## Environment
- Domain Controller: DC01 (192.168.56.10)
- Client Machine: CLIENT01
- Domain: relentixtest.local

## Actions Performed
- Installed RSAT tools on CLIENT01 using PowerShell
- Configured proper DNS resolution to point to the domain controller
- Launched Active Directory Users and Computers (dsa.msc) from CLIENT01
- Navigated to IT → Support OU
- Verified Help Desk user visibility
- Tested delegated permissions on domain user objects

## Verification
- Successfully accessed Active Directory from CLIENT01
- Confirmed Help Desk account can:
 - Reset user passwords
 - Modify user properties
 - Unlock user accounts
- Confirmed restricted permissions:
 - No domain-level administrative control
 - No access to Domain Admin functions

## Key Outcome
Successfully simulated a real-world Help Desk environment where delegated users manage accounts without full administrative privileges.

## Evidence
Screenshots located in:
../screenshots/step-21/