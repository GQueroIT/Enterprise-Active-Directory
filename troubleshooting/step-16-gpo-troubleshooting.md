# Step 16 — GPO Drive Mapping Troubleshooting

## Issue

The mapped network drive (Z:) did not appear on CLIENT01 after initial GPO deployment.

---

## Troubleshooting Steps

1. Verified user identity using:
   whoami  
   whoami /groups  

2. Ran:
   gpresult /r  

3. Observed:
   Applied Group Policy Objects: N/A  

4. Identified that the GPO was not linked to the correct OU.

5. Confirmed user location:
   OU=IT  

6. Opened Group Policy Management on DC01.

7. Linked the GPO:
   GPO - Map CompanyData Drive  
   → IT OU  

8. Verified Security Filtering included:
   Authenticated Users  

9. Forced policy update:
   gpupdate /force  

10. Logged off and logged back into CLIENT01  

---

## Resolution

The Z: drive appeared successfully under This PC after correcting the OU linkage and refreshing Group Policy.

---

## Result

- Drive mapping successfully applied  
- User can access shared resource  
- File creation confirmed  

---

## Notes

This issue reinforced the importance of:

- Correct OU targeting for User Configuration GPOs  
- Understanding GPO scope and application  
- Using gpresult to validate policy application  