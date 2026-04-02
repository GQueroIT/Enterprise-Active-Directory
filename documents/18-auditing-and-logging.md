# Step 18 — Auditing and Logging

## Objective

The objective of this step was to enable auditing within the Active Directory environment and validate that security-related events are properly logged.

---

## Configuration Performed

A Group Policy Object named **Audit Policy Baseline** was created and linked at the domain level.

The following audit policies were enabled:

### Logon/Logoff
- Audit Logon — Success, Failure
- Audit Account Lockout — Success

### Account Management
- Audit User Account Management — Success, Failure
- Audit Security Group Management — Success, Failure

---

## Policy Application

Policies were applied using:

gpupdate /force

Verification was performed using:

auditpol /get /category:*

---

## Event Validation

Security logs were reviewed using Event Viewer:

Windows Logs → Security

The following event IDs were observed:

- 4625 — Failed logon
- 4740 — Account lockout

Test login attempts were performed from the client machine to generate audit events.

---

## Outcome

Auditing is now enabled and functioning correctly. Security events such as failed logons and account lockouts are being recorded and can be reviewed for monitoring and analysis.