# Step 08 - Administrative Account and OU Creation

---

## Objective

In this step, I created a dedicated administrative account and organized the Active Directory environment using Organizational Units (OUs).

This improves security, delegation, and overall directory structure.

---

## Technologies Used

Windows Server 2022

Active Directory Users and Computers (ADUC)

---

## Key Concepts

Organizational Units (OUs)

Administrative Accounts

Role-Based Access Control (RBAC)

Directory Structure Organization

Delegation of Control

---

## Configuration / Implementation

### 1. Open Active Directory Users and Computers

Opened:

Active Directory Users and Computers (ADUC)

---

### 2. Create Organizational Units (OUs)

Created the following OUs under the domain:

IT

HR

Workstations

Servers

Service Accounts

---

### 3. Create Administrative Account

Navigated to the IT OU.

Created a new user account:

Username: gquero

Configured a secure password

Set appropriate password options

---

### 4. Assign Administrative Privileges

Added the user to:

Domain Admins

---

### 5. Verify Administrative Access

Opened Command Prompt and ran:

whoami /groups

Confirmed the account is part of the Domain Admins group

---

## Validation / Verification

Verified all OUs are visible in ADUC

Confirmed the administrative account exists in the IT OU

Verified Domain Admins group membership

Successfully authenticated using the new admin account

---

## Evidence

Screenshots for this step:

screenshots/step-08/

---

## Key Takeaways

OUs provide logical structure within Active Directory

Administrative accounts should be separate from default accounts

Group membership controls permissions and access

Proper OU design improves scalability and management

---