# Step 21 - Help Desk Delegation Validation Log

## Objective
Validate that delegated Help Desk permissions function correctly from a domain-joined client machine using RSAT tools.

---

## Environment
- Domain Controller: DC01
- Client Machine: CLIENT01
- Domain: relentixtest.local

---

## Actions Performed

### RSAT Installation
- Installed RSAT: Active Directory Domain Services and Lightweight Directory Services Tools on CLIENT01
- Verified installation completed successfully after restoring internet connectivity

### Client-Side Administration Validation
- Opened Active Directory Users and Computers from CLIENT01 using dsa.msc
- Confirmed successful connection to relentixtest.local
- Navigated to IT → Support OU
- Verified Help Desk account visibility

### Delegation Validation
- Confirmed delegated administrative tasks could be performed from CLIENT01
- Verified intended access boundaries remained in place
- Confirmed Help Desk validation from a client endpoint instead of directly from the domain controller

---

## Key Validation Results
- Active Directory tools opened successfully from CLIENT01
- Domain communication and DNS resolution were functioning correctly
- RSAT-based administration worked from the client machine
- Delegated Help Desk model validated successfully

---

## Outcome
Step 21 successfully validated Help Desk delegation from CLIENT01 using RSAT tools in a domain-connected environment.

---

## Evidence
Screenshots located in:

../screenshots/step-21/