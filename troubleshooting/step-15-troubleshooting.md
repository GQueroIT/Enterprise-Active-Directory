# Step 15 – NTFS Permission Issue (Access Denied)

---

## Issue
While applying NTFS permissions to the shared folder `C:\Shares\CompanyData`, the operation failed.

---

## Error Message

An error occurred while applying security information to:
C:\Shares\CompanyData

Failed to enumerate objects in the container. Access is denied.

---

## Root Cause

The folder contained files and subfolders with different ownership configurations.

Some objects were not owned by the current administrative account, which prevented permissions from being applied across all child objects.

---

## Troubleshooting Process

### 1. Initial Permission Failure

Attempted to apply NTFS permissions to the folder, but received an access denied error.

![Access Denied Error](../screenshots/troubleshooting/step-15-troubleshoot/01-access-denied-error.png)

---

### 2. Enumeration Failure

The system was unable to enumerate objects inside the folder due to restricted access.

![Failed Enumeration](../screenshots/troubleshooting/step-15-troubleshoot/02-failed-enumeration.png)

---

### 3. Permission Application Failure

Multiple attempts to apply permissions continued to fail due to ownership conflicts.

![Permission Apply Error](../screenshots/troubleshooting/step-15-troubleshoot/03-permission-apply-error.png)

---

### 4. Ownership Correction

Resolved by taking ownership of the folder.

Actions performed:
- Opened Advanced Security Settings
- Changed Owner to `Administrators`
- Enabled "Replace owner on subcontainers and objects"

![Ownership Change](../screenshots/troubleshooting/step-15-troubleshoot/04-ownership-change.png)

---

### 5. Permission Reset and Cleanup

After ownership correction, permissions were successfully applied.

Actions performed:
- Enabled "Replace all child object permission entries with inheritable permission entries"
- Removed direct user permissions (`gquero`)
- Enforced group-based access control

![Final Permissions](../screenshots/troubleshooting/step-15-troubleshoot/05-final-permissions.png)

---

## Final Result

- Permissions successfully propagated to all files and folders
- No direct user permissions remain
- Access is now controlled through security groups only

---

## Key Takeaways

- Ownership must be corrected before modifying NTFS permissions
- Inheritance issues can block permission propagation
- Group-based access control is preferred over individual user assignments
- Proper permission structure ensures scalability and security