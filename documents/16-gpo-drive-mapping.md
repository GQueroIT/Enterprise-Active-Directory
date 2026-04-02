# Step 16 — GPO Drive Mapping

## Objective

The objective of this step was to implement Group Policy to automatically map a network drive for domain users, simulating real-world enterprise user experience and centralized resource access.

---

## GPO Creation

A new Group Policy Object (GPO) was created:

GPO Name:
GPO - Map CompanyData Drive

---

## Configuration Path

User Configuration  
→ Preferences  
→ Windows Settings  
→ Drive Maps  

---

## Drive Mapping Configuration

Action: Create  
Location: \\DC01\CompanyData  
Drive Letter: Z:  
Label: CompanyData  

Reconnect: Enabled  

---

## GPO Linking

The GPO was linked to the IT OU to ensure it applied to the user account (mrivera).

---

## Verification

On CLIENT01:

- gpupdate /force was executed  
- User logged off and back in  
- Z: drive appeared under This PC  
- Drive mapped to \\DC01\CompanyData  

---

## Result

Users now automatically receive access to the shared resource without manual configuration, demonstrating centralized management through Group Policy.

---

## Notes

This step reinforced the importance of:

- Correct OU targeting (User vs Computer)
- Group Policy application flow
- Enterprise automation of user environments