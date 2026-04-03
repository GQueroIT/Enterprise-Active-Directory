# Enterprise Active Directory Infrastructure (AD Lab)

![Windows Server](https://img.shields.io/badge/Windows%20Server-2019-blue)
![Active Directory](https://img.shields.io/badge/Active%20Directory-AD%20DS-green)
![VirtualBox](https://img.shields.io/badge/Virtualization-VirtualBox-orange)
![PowerShell](https://img.shields.io/badge/Automation-PowerShell-yellow)
![Status](https://img.shields.io/badge/Project-Completed-success)

---

## What This Project Demonstrates

This project demonstrates hands-on, real-world experience with:

- Active Directory Domain Services (AD DS)
- Domain Controller deployment and DNS integration
- Organizational Unit (OU) design
- User and group management
- AGDLP permission model
- NTFS and Share permissions
- Group Policy deployment (GPO)
- Drive mapping automation
- Security policy enforcement
- Advanced audit policy configuration
- File access auditing (Event ID 4663)
- Client-side administration using RSAT
- Multi-layer troubleshooting (network, DNS, permissions, GPO)
- Full end-to-end validation of an enterprise environment

---

## Project Overview

This project represents a fully built and validated **enterprise Active Directory environment**.

The environment includes:

- Domain Controller (DC01)
- Windows Client (CLIENT01)
- Structured OU hierarchy
- Role-based access control (AGDLP)
- Secure file sharing system
- Group Policy automation
- Security enforcement and auditing

Every phase is documented with:

- Step-by-step build documentation  
- Logs and command validation  
- Screenshots as proof of execution  
- Real troubleshooting scenarios  

---

## Infrastructure Planning (Architecture)

The environment was designed before deployment using structured planning:

- [IP Addressing Plan](./configs/00-ip-addressing-plan.md)
- [Hostname Plan](./configs/01-hostname-plan.md)
- [OU Structure Design](./configs/02-ou-structure.md)

These define the foundation of the environment, including network layout, naming conventions, and directory structure.

---

## Lab Build (Step-by-Step)

Each phase reflects a real-world deployment process:

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

This environment includes layered enterprise security:

- Group Policy enforcement
  - Password policy
  - Account lockout policy  

- Role-based access control (AGDLP)
- NTFS and share permissions
- GPO-based drive mapping
- Advanced audit policy configuration
- File access auditing (Event ID 4663)
- Security event monitoring

---

## Troubleshooting (Real-World Scenarios)

This project includes extensive troubleshooting across multiple layers:

- Network connectivity failures (VirtualBox)
- DNS misconfiguration breaking domain resolution
- File share access denial
- AGDLP permission conflicts
- GPO application issues
- Security policy inconsistencies
- Auditing configuration failures

### Highlight — Step 21
- Dual network adapter configuration (NAT + Host-Only)
- DNS routing issues
- RSAT installation failure due to no internet
- Client-side Active Directory access troubleshooting

---

## Key Highlights

- Built complete Active Directory infrastructure from scratch  
- Implemented enterprise-level AGDLP model  
- Automated user environments with Group Policy  
- Configured domain-wide security enforcement  
- Implemented auditing and validated via event logs  
- Performed deep multi-layer troubleshooting  
- Validated environment from both server and client perspectives  
- Maintained structured, professional documentation  

---

## How to Run This Lab (Quick Overview)

- Virtualization: VirtualBox  
- OS: Windows Server + Windows 10  
- Network:  
  - Host-Only Adapter (internal domain network)  
  - NAT Adapter (internet access)  

Core setup flow:

1. Build Domain Controller (DC01)  
2. Configure DNS and Active Directory  
3. Create OU structure and users  
4. Join CLIENT01 to domain  
5. Configure file shares and permissions  
6. Apply Group Policy  
7. Implement security and auditing  
8. Validate from client using RSAT  

---

## Final Outcome

This project represents a fully functional enterprise Active Directory environment.

It demonstrates:

- Identity and access management
- Infrastructure deployment
- Security enforcement
- Monitoring and auditing
- Real-world troubleshooting

This is not a theoretical lab — it is a complete system build and validation project.

---

## Evidence

Every step includes:

- Screenshots  
- Logs  
- Commands  
- Troubleshooting breakdown  

📌 Full evidence available in the repository structure.