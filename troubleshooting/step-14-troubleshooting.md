# Troubleshooting

---

## Issue 1: Access Denied When Attempting to Access the CompanyData Share

### Problem
While testing access to the shared folder, the following network path returned an access denied error:

```powershell
\\DC01\CompanyData
```

The system displayed a message stating that permission to access the resource was denied.

---

### Root Cause
The issue was caused by a permissions misconfiguration involving both NTFS permissions and share permissions.

The following conditions were identified during troubleshooting:

- The folder was inheriting permissions from its parent folder:
  C:\Shares

- A direct user permission entry existed for:
  Gabriel Quero (gquero@relentixtest.local)

- Share permissions were not configured using the proper enterprise model

This created an authorization issue where the share could be reached, but the effective permissions did not allow proper access.

---

### Resolution

#### Step 1: Reviewed NTFS Permissions
Navigated to:
Company Data → Properties → Security

Identified that permissions included a direct user assignment instead of relying solely on security groups.

---

#### Step 2: Identified Permission Inheritance
Attempted to remove the user permission but received an error indicating the permissions were inherited from the parent folder:

C:\Shares

---

#### Step 3: Disabled Inheritance
Navigated to:
Security → Advanced

Selected:
Disable inheritance

Chose:
Convert inherited permissions into explicit permissions

This allowed modification of individual permission entries.

---

#### Step 4: Implemented RBAC (Role-Based Access Control)
Removed direct user permission:
Gabriel Quero

Ensured access was assigned through:
IT_Admins security group

Access model used:
User → Group → Permissions

---

#### Step 5: Verified NTFS Permissions
Confirmed the following:

- IT_Admins → Full Control
- SYSTEM → Full Control
- CREATOR OWNER → Default

No direct user permissions remained.

---

#### Step 6: Corrected Share Permissions
Navigated to:
Properties → Sharing → Advanced Sharing → Permissions

Configured:

- Authenticated Users → Full Control

This allows access to the share while NTFS permissions enforce restrictions.

---

### Final Configuration

Share Permissions:
- Authenticated Users → Full Control

NTFS Permissions:
- IT_Admins → Full Control
- SYSTEM → Full Control
- CREATOR OWNER → Default

---

### Verification
Successfully accessed:

```powershell
\\DC01\CompanyData
```

No errors were encountered and access was confirmed through group membership.

---

### Key Takeaways

- NTFS and Share permissions must both allow access
- The most restrictive permission applies
- Avoid assigning permissions directly to users
- Use security groups for scalable access control (RBAC)
- Share permissions should be broad, NTFS permissions should be restrictive
- Permission inheritance must be managed for granular control

---