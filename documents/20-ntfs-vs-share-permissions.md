# Step 20 — NTFS vs Share Permissions (Effective Access)

## Objective

The objective of this step was to understand and validate how Share permissions and NTFS permissions interact to determine effective access within a file share.

---

## Configuration Performed

Share permissions were configured to allow Domain Users Full Control to ensure access control is enforced primarily through NTFS permissions.

NTFS permissions were configured as follows:

- IT Group — Full Control  
- HR Group — Read  
- Domain Users — Removed  

---

## Effective Access Concept

Effective permissions are determined by combining Share and NTFS permissions, with the most restrictive permission taking precedence.

Example:

- Share = Full Control  
- NTFS = Read  

Result:
- Effective Access = Read  

---

## Validation

Access was tested using different user accounts:

### HR User
- Able to read files  
- Unable to create or modify files  

### IT User
- Able to read, create, and modify files  

Effective Access tab was used to verify permission results.

---

## Command Validation

The following command was used to verify permissions:

icacls C:\CompanyData

---

## Outcome

Permissions are functioning as expected. Access is controlled through NTFS while Share permissions allow connectivity. Effective access aligns with assigned group roles.