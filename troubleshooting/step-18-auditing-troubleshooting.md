# Step 18 — Troubleshooting Auditing and Logging

## Issue

Audit events needed to be verified after policy deployment to ensure the new settings were actually being applied and generating useful log data.

---

## Cause

In Active Directory environments, audit settings may appear configured in Group Policy but still require validation through policy refresh and event generation.

---

## Resolution

I forced Group Policy to update using:

gpupdate /force

I then verified the audit configuration using:

auditpol /get /category:*

To confirm that logging was working as expected, I generated failed sign-in activity from CLIENT01 and reviewed the resulting events in Event Viewer on DC01.

---

## Verification

The Security log successfully recorded relevant events, including failed logon activity and account lockout behavior where applicable.

---

## Screenshots

Troubleshooting screenshots for this step are located in:

`./screenshots/troubleshooting/step-18-troubleshoot/`

---

## Lesson Learned

This step reinforced that configuring auditing is only part of the process. Real validation requires forcing policy refresh, generating activity, and confirming that the expected events appear in the Security log.