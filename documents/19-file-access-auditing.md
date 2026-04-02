# Step 19 — File Access Auditing

## Objective

The objective of this step was to track file and folder access within the shared directory using auditing policies. This allows visibility into user activity within the environment.

---

## Configuration Performed

File system auditing was enabled through Group Policy under Object Access.

Audit File System was configured for:
- Success
- Failure

Auditing was then enabled directly on the shared folder for Domain Users.

---

## Policy Application

Policies were applied using:

gpupdate /force

---

## Validation

File activity was generated from a domain-joined client machine by accessing, creating, and modifying files within the shared folder.

---

## Event Monitoring

Security logs were reviewed in Event Viewer:

Windows Logs → Security

Event ID:
- 4663 — Object access

These events confirmed that file activity was successfully being logged.

---

## Outcome

File access auditing is now fully enabled. User activity within shared folders can be monitored and reviewed, providing visibility into access behavior within the domain environment.