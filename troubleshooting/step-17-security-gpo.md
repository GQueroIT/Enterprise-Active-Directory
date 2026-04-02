# Step 17 — Troubleshooting GPO Precedence Issue

## Issue

Security policy settings were not applying correctly. Default values were still being shown when verifying policy configuration.

---

## Cause

The Default Domain Policy had higher priority in the GPO link order, which prevented the new Security Baseline Policy from taking precedence.

---

## Resolution

I reviewed the domain-level GPO link order in Group Policy Management and moved the Security Baseline Policy above the Default Domain Policy so the new settings would apply first.

---

## Verification

I used the following commands to verify the fix:

gpupdate /force  
net accounts  

After correcting the link order, the output reflected the expected password and account lockout settings.

---

## Screenshots

Troubleshooting screenshots for this step are located in:

`./screenshots/troubleshooting/step-17-troubleshoot/`

---

## Lesson Learned

This issue reinforced the importance of GPO precedence at the domain level. Even if a policy is configured correctly, it will not apply as expected if a higher-priority policy overrides it.