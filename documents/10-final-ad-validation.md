# Step 10 - Final Active Directory Validation

---

## Objective

In this step, I performed a final validation of the Active Directory environment after completing the initial setup and verification.

The goal was to confirm everything is stable before introducing client machines.

---

## Technologies Used

Windows Server 2022

Active Directory Users and Computers (ADUC)

Command Prompt

DNS Manager

---

## Key Concepts

End-to-End Validation

Domain Functionality

DNS Resolution

Authentication Consistency

Environment Stability

---

## Configuration / Implementation

### 1. Verify Domain Services

Confirmed Active Directory Domain Services are running properly.

Verified DC01 is functioning as expected.

---

### 2. Verify Domain Authentication

Logged into the system using domain credentials.

Confirmed consistent and successful authentication.

---

### 3. Verify DNS Resolution

Opened Command Prompt and tested name resolution.

Confirmed the domain resolves correctly:

relentixtest.local

---

### 4. Verify Active Directory Structure

Opened Active Directory Users and Computers.

Confirmed OU structure is intact.

Verified all users and accounts remain properly organized.

---

### 5. Verify Administrative Access

Confirmed the administrative account still has Domain Admin privileges.

Verified access to Active Directory management tools.

---

### 6. Final Environment Check

Reviewed overall system behavior.

Confirmed there are no errors or misconfigurations.

---

## Validation / Verification

Confirmed domain services are stable and operational.

Verified consistent authentication and DNS resolution.

Validated Active Directory structure and permissions.

Confirmed the environment is ready for client integration.

---

## Evidence

Screenshots for this step:

screenshots/step-10/

---

## Key Takeaways

This step confirmed the Active Directory environment is fully stable.

All core services are working together as expected.

The environment is now ready for domain-joined systems.

---