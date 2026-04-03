# Enterprise Active Directory Infrastructure (AD Lab)

This project represents a fully built and validated **enterprise-style Active Directory environment**, designed, deployed, secured, and tested from the ground up.

The environment simulates real-world infrastructure, including identity management, access control, Group Policy enforcement, and auditing.

---

## What This Project Demonstrates

This project demonstrates hands-on, real-world experience with:

- Active Directory Domain Services (AD DS) deployment
- Domain Controller configuration and DNS integration
- Organizational Unit (OU) design and directory structure
- User and group management
- AGDLP permission model implementation
- NTFS and Share permissions
- Group Policy deployment (GPO)
- Drive mapping automation
- Security policy enforcement
- Advanced audit policy configuration
- File access auditing and event log analysis
- Client-side administration using RSAT
- Multi-layer troubleshooting (network, DNS, permissions, GPO)
- Full end-to-end validation of an enterprise environment

---

## Project Overview

This environment was built to replicate how Active Directory is deployed and managed in a real enterprise setting.

The lab includes:

- Domain Controller (DC01)
- Windows Client (CLIENT01)
- Structured OU hierarchy
- Role-based access control using AGDLP
- Secure file sharing environment
- Group Policy automation
- Security enforcement and auditing

Every phase of the build is documented with logs, screenshots, and validation steps.

---

## Infrastructure Planning (Configs)

This project includes foundational planning documents that define the structure of the environment before deployment.

- [IP Addressing Plan](./configs/00-ip-addressing-plan.md)
- [Hostname Plan](./configs/01-hostname-plan.md)
- [OU Structure Design](./configs/02-ou-structure.md)

These documents represent the architectural decisions behind the environment, including network layout, system naming, and directory organization.

---

## Repository Structure

- **/documents** → Full lab documentation (step-by-step build)
- **/logs** → Command execution and validation logs
- **/screenshots** → Evidence of configuration and verification
- **/troubleshooting** → Real issues encountered and resolved

---

## Lab Build (Step-by-Step)

Each step reflects a real deployment phase and includes documentation, logs, and evidence.

### Core Setup

- [Step 00 - Lab Overview](./documents/step-00-lab-overview.md)
- [Step 01 - Repository Structure](./documents/step-01-repo-setup.md)
- [Step 02 - Git Setup](./documents/step-02-git-setup.md)
- [Step 03 - VirtualBox Preparation](./documents/step-03-virtualbox-prep.md)
- [Step 04 - Windows Server Deployment](./documents/step-04-server-vm.md)
- [Step 05 - Network Configuration](./documents/step-05-network-static-ip.md)

### Active Directory Deployment

- [Step 06 - AD DS Installation](./documents/step-06-adds-install.md)
- [Step 07 - Domain Controller Promotion](./documents/step-07-post-validation.md)
- [Step 08 - OU and Admin Setup](./documents/step-08-ou-admin.md)
- [Step 09 - Core AD Verification](./documents/step-09-core-verification.md)
- [Step 10 - AD Validation](./documents/step-10-ad-verification.md)

### Client Integration

- [Step 11 - Windows Client Build](./documents/step-11-client-build-notes.md)
- [Step 12 - Users and Groups](./documents/step-12-domain-users-and-groups.md)
- [Step 13 - Domain Join](./documents/step-13-domain-join-and-client-validation.md)

### Access Control & Permissions

- [Step 14 - File Share Setup](./documents/step-14-share-validation.md)
- [Step 15 - AGDLP Implementation](./documents/step-15-agdlp-validation.md)
- [Step 16 - GPO Drive Mapping](./documents/step-16-gpo-log.md)

### Security & Auditing

- [Step 17 - Security Policy Enforcement](./documents/step-17-security-log.md)
- [Step 18 - Advanced Auditing](./documents/step-18-auditing-log.md)
- [Step 19 - File Access Auditing](./documents/step-19-file-access-log.md)
- [Step 20 - Permission Validation](./documents/step-20-permissions-log.md)

### Enterprise Operations Simulation

- [Step 21 - Help Desk Delegation (RSAT)](./documents/step-21-helpdesk-validation.md)
- [Step 22 - Final Environment Validation](./documents/step-22-final-lab-validation.md)

---

## Security Architecture

This environment includes layered security implementation:

- Group Policy enforcement
  - Password policy
  - Account lockout policy

- Role-based access control using **AGDLP**
- NTFS and share-level permissions
- GPO-based drive mapping
- Advanced audit policy configuration
- File access auditing (Event ID 4663)
- Security log monitoring

This simulates enterprise-level control, enforcement, and visibility across the domain.

---

## Troubleshooting (Real-World Issues)

This project includes extensive troubleshooting across multiple layers:

- Network connectivity failures (VirtualBox configuration)
- DNS misconfiguration breaking domain resolution
- File share access denial issues
- AGDLP permission conflicts
- GPO application failures
- Security policy inconsistencies
- Auditing configuration issues
- RSAT installation failures (no internet / dual NIC setup)

Step 21 specifically includes:

- Dual adapter configuration (Host-Only + NAT)
- DNS routing challenges
- Client-side Active Directory access issues

---

## Key Highlights

- Built a complete Active Directory environment from scratch
- Implemented enterprise-level access control using AGDLP
- Automated user environments with Group Policy
- Configured and validated domain-wide security policies
- Implemented file access auditing with event validation
- Performed deep, multi-layer troubleshooting
- Validated environment from both server and client perspectives
- Maintained clean, structured, production-style documentation

---

## Final Outcome

This project represents a fully functional, enterprise-style Active Directory environment.

It demonstrates:

- Identity and access management
- Infrastructure deployment and validation
- Security enforcement and monitoring
- Real-world troubleshooting and problem resolution

---

## Evidence

All steps include:

- Screenshots
- Logs
- Validation commands
- Troubleshooting documentation

📌 See full evidence index in the documentation folder.