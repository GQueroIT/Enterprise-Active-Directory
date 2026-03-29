# Step 07 - Domain Controller Promotion and Domain Creation

---

## Objective

In this step, I promoted DC01 to a Domain Controller and created the Active Directory domain.

This establishes the core identity infrastructure for the lab environment.

---

## Technologies Used

Windows Server 2022

Server Manager

Active Directory Domain Services (AD DS)

---

## Key Concepts

Domain Controller

Active Directory Forest

Domain Creation

DNS Integration

Directory Services Infrastructure

---

## Configuration / Implementation

### 1. Begin Domain Controller Promotion

Opened Server Manager and selected the notification flag.

Clicked:

Promote this server to a domain controller

---

### 2. Deployment Configuration

Selected:

Add a new forest

Entered root domain name:

relentixtest.local

---

### 3. Domain Controller Options

Configured the following:

Forest functional level

Domain functional level

Enabled DNS server

Set Directory Services Restore Mode (DSRM) password

---

### 4. DNS Options

Reviewed the DNS delegation warning.

Proceeded without changes as expected in a new forest setup.

---

### 5. Additional Options

Verified NetBIOS domain name:

RELENTIXTEST

---

### 6. Paths Configuration

Left default paths for:

Database folder

Log files

SYSVOL

---

### 7. Review Configuration

Reviewed all selected settings.

Confirmed accuracy before proceeding.

---

### 8. Prerequisites Check

Validated all prerequisites passed successfully.

No blocking issues were present.

---

### 9. Install and Promote

Clicked Install to begin domain controller promotion.

The server automatically restarted after completion.

---

## Validation / Verification

Logged into the system using domain credentials

Verified domain name:

relentixtest.local

Confirmed DC01 is now a Domain Controller

Verified Active Directory tools are available

---

## Evidence

Screenshots for this step:

screenshots/step-07/

---

## Key Takeaways

Domain Controller promotion creates the Active Directory environment

A forest is the top-level structure in Active Directory

DNS integration is critical for domain functionality

This step establishes the foundation for identity and access management

---