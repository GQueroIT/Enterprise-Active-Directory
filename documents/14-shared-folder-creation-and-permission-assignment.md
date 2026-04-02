# Step 14 - Shared Folder Creation and Permission Assignment

---

## Objective

In this step, I created a shared folder on DC01, configured both share permissions and NTFS permissions, and validated access from CLIENT01 using the domain environment.

---

## Technologies Used

- Windows Server 2022
- Windows 10 Pro
- Active Directory Domain Services (AD DS)
- File Explorer
- SMB File Sharing
- PowerShell

---

## Key Concepts

- Shared Folder Creation
- SMB Share Permissions
- NTFS Permissions
- Group-Based Access Control
- UNC Path Validation
- Client Access Testing

---

## Shared Folder Preparation

A new folder structure was created on DC01 for shared data access.

- Path: `C:\Shares\CompanyData`

This folder was used as the target for the lab's first domain-based file share.

---

## Share Configuration

The `CompanyData` folder was shared using Advanced Sharing.

- Share Name: `CompanyData`

Share-level access was assigned using a security group rather than assigning permissions directly to an individual user. This keeps the environment more aligned with how access is typically managed in an enterprise environment.

---

## NTFS Permission Configuration

After the folder was shared, NTFS permissions were configured on the Security tab.

The same security group used for the share was granted the appropriate level of access so that both share permissions and file system permissions worked together correctly.

This step reinforced the importance of understanding that effective access depends on the combination of both permission layers.

---

## Validation from DC01

The shared folder was validated locally on DC01 using the UNC path:

```text
\\DC01\CompanyData