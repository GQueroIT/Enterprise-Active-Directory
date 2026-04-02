# Step 15 - AGDLP Permission Model Implementation

---

## Objective

In this step, I implemented the AGDLP (Accounts → Global → Domain Local → Permissions) model to restructure access control for the CompanyData shared folder.

---

## Technologies Used

- Windows Server 2022
- Active Directory Users and Computers (ADUC)
- SMB File Sharing
- NTFS Permissions
- PowerShell

---

## Key Concepts

- AGDLP Model
- Group Nesting
- Global Groups
- Domain Local Groups
- Permission Delegation
- Access Control Best Practices

---

## Group Structure Implementation

The following group structure was implemented:

- Global Group: `GG_IT_Admins`
- Domain Local Group: `DL_CompanyData_Modify`

User accounts were placed into the Global Group, and the Global Group was nested inside the Domain Local Group.

This ensures scalability and aligns with enterprise Active Directory design principles.

---

## Permission Assignment

The Domain Local Group `DL_CompanyData_Modify` was assigned permissions to the shared folder:

- NTFS Permissions: Modify
- Share Permissions: Change, Read

Direct user or legacy group permissions were removed and replaced with this structured model.

---

## Validation from CLIENT01

Access to the shared folder was tested from CLIENT01 using a domain account.

- Verified successful access to: `\\DC01\CompanyData`
- Confirmed ability to read and create files within the shared directory

---

## PowerShell Verification

The following commands were used to verify the configuration:

```powershell
Get-ADGroupMember GG_IT_Admins
Get-ADGroupMember DL_CompanyData_Modify
Get-SmbShareAccess -Name CompanyData
(Get-Acl "C:\Shares\CompanyData").Access

These commands confirmed proper group membership, permission assignment, and share accessiblity.

---

## Screenshots

All screenshots for this step are located in:

screenshots/step-15/

---

## Notes

This step transitioned the lab environment from direct permission assignment to a structured enterprise access control model. 

The AGDLP model allows for scalable and manageable permission assignnment, reducing administrative overhead and improving security. 