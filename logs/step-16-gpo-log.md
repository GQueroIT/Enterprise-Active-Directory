# Step 16 — GPO Drive Mapping Log

## Actions Performed

1. Created GPO: GPO - Map CompanyData Drive
2. Configured drive mapping under User Configuration → Preferences
3. Set mapping:
   \\DC01\CompanyData → Z:
4. Linked GPO to IT OU
5. Verified Security Filtering (Authenticated Users)
6. Ran gpupdate /force on CLIENT01
7. Logged off and logged back in
8. Verified Z: drive appeared
9. Tested file creation within mapped drive

---

## Verification

- Z: drive successfully mapped
- User accessed shared folder
- File creation successful

---

## Status

Completed successfully