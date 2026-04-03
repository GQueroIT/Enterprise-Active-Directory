# Step 21 - Help Desk Delegation Validation Log

## Objective
Validate that delegated Help Desk permissions function correctly from a domain-joined client machine using RSAT tools.

---

## Actions Performed

### RSAT Installation
- Installed RSAT tools on CLIENT01 using PowerShell
- Verified successful installation after resolving network issues

### Active Directory Access
- Launched Active Directory Users and Computers (dsa.msc)
- Connected to domain: relentixtest.local
- Navigated through Organizational Units

### Help Desk Validation
- Accessed IT → Support OU
- Verified Help Desk account visibility
- Tested delegated permissions on user accounts

---

## Verification Results

### Successful Actions
- Reset user passwords
- Modify user account properties
- Unlock user accounts

### Restricted Actions
- No Domain Admin privileges
- No access to higher-level administrative functions

---

## Observations
- RSAT tools function correctly when DNS is properly configured
- Domain connectivity depends fully on correct DNS settings
- Delegation allows controlled administrative access without full privileges

---

## Outcome
Successfully validated a real-world Help Desk scenario where delegated users manage accounts securely from a client machine.

---

## Evidence
Screenshots located in:

../screenshots/step-21/