# Step 17 — Security GPO Hardening

## Objective

The goal of this step was to implement baseline security controls across the domain using Group Policy. This included enforcing password requirements and account lockout policies to simulate a real-world enterprise security configuration.

---

## Configuration Performed

I created a new Group Policy Object named **Security Baseline Policy** and linked it at the domain level.

### Password Policy

- Enforced password history: 5
- Maximum password age: 60 days
- Minimum password age: 1 day
- Minimum password length: 12
- Password complexity: Enabled

### Account Lockout Policy

- Lockout threshold: 5 failed attempts
- Lockout duration: 15 minutes
- Reset counter after: 15 minutes

---

## Issue Encountered

Initially, the policy did not apply as expected. The system continued to show default values when verified using command-line tools.

---

## Troubleshooting Performed

I reviewed the Group Policy link order and identified that the **Default Domain Policy** was taking precedence over the newly created security policy.

To resolve this, I adjusted the link order so that the **Security Baseline Policy** had higher priority.

---

## Verification

Policies were applied using:

gpupdate /force

Validation was performed using:

net accounts

The output confirmed that the correct password and lockout settings were successfully enforced.

---

## Outcome

This step successfully implemented and enforced domain-level security policies. It also demonstrated the importance of GPO precedence and proper policy application within an Active Directory environment.