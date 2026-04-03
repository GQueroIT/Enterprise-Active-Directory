# Step 20 — NTFS vs Share Permissions Troubleshooting

## Issue

The HR user was unable to see or access the mapped Z: drive on the client machine.

---

## Root Cause

The Group Policy Object (GPO) responsible for drive mapping was not applied to the HR user.

This occurred because the GPO was not linked to the Organizational Unit (OU) containing the HR user account.

As a result, the policy did not apply, and the drive mapping was not created.

---

## Troubleshooting Steps

### 1. Verified Group Policy Application

Ran the following command on the client machine:

gpresult /r

Result:

- No GPOs were listed under "Applied Group Policy Objects"

---

### 2. Verified User Group Membership

Confirmed the user was a member of:

- HR_Users

---

### 3. Checked GPO Link Location

Reviewed Group Policy Management and identified that the drive mapping GPO was linked to:

- IT OU  
- Workstations OU  

The HR OU was not linked.

---

### 4. Verified GPO Security Filtering

Confirmed that HR_Users was included in the GPO Security Filtering.

---

## Resolution

The GPO was linked to the HR OU using:

Group Policy Management → HR OU → Link an Existing GPO

After linking:

- Ran gpupdate /force on the client
- Logged off and logged back in

---

## Verification

After applying the fix:

- gpresult /r showed the GPO as applied
- Z: drive appeared under This PC
- HR user was able to access the shared folder

---

## Outcome

The issue was resolved by correctly linking the GPO to the appropriate OU.

This ensured that Group Policy applied based on user location within Active Directory.