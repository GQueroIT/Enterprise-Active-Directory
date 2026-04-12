# ActiveDirectory-Lab

Enterprise-style Active Directory lab focused on domain administration, user support, Group Policy, DNS troubleshooting, and structured technical documentation.

![Project](https://img.shields.io/badge/Project-Active%20Directory-blue)
![Focus](https://img.shields.io/badge/Focus-User%20Support%20%26%20Administration-brightgreen)
![Platform](https://img.shields.io/badge/Platform-Windows%20Server-lightgrey)
![Status](https://img.shields.io/badge/Status-Completed-success)

---

## What This Project Demonstrates

This project demonstrates practical skills relevant to IT Support, Help Desk, and junior Systems Administration roles, including:

- Active Directory Domain Services (AD DS) deployment and configuration
- User and group administration in a domain environment
- Organizational Unit (OU) design for structured account management
- Group Policy Object (GPO) implementation and validation
- DNS troubleshooting and domain authentication support
- Step-by-step troubleshooting and documentation discipline

---

## Why This Project Matters

This lab goes beyond basic setup. It demonstrates the ability to build and support a Windows domain environment while working through issues that directly affect user access, authentication, and policy enforcement.

The project reflects the kind of troubleshooting and system administration workflow used in real IT environments, especially in support roles where account access, login behavior, DNS resolution, and Group Policy are critical.

---

## Start Here

If you are reviewing this project quickly, these sections provide the best overview:

- [Lab Overview](./00-Lab-Overview/README.md)
- [Active Directory Deployment](./06-Install-AD-DS/README.md)
- [Create Domain Admin Account](./08-Create-Domain-Admin-User/README.md)
- [OU Structure](./10-Create-OU-Structure/README.md)
- [Group Policy Configuration](./16-Create-User-Logon-GPO/README.md)
- [Troubleshooting](./21-Troubleshooting/README.md)

---

## Core Skills Demonstrated

### Identity and User Administration
- Created and managed domain users and security groups
- Built Organizational Units (OUs) to organize administrative structure
- Supported user account access through proper domain configuration

### Group Policy and Access Control
- Applied Group Policy Objects (GPOs) to control user settings and system behavior
- Verified policy application and login behavior
- Documented policy-based management steps clearly

### DNS and Authentication Troubleshooting
- Diagnosed DNS-related issues affecting domain connectivity and authentication
- Verified domain controller discovery and domain login functionality
- Restored access by correcting name resolution dependencies

### Documentation and Validation
- Captured screenshots and validation steps throughout the build
- Organized implementation into structured step-by-step phases
- Maintained a clean and professional project layout suitable for portfolio review

---

## Project Structure

This repository is organized into step-based sections covering the full domain build process, validation, and troubleshooting.

Key areas include:
- Environment preparation
- Windows Server installation and configuration
- Active Directory deployment
- Administrative account creation
- OU structure setup
- Group Policy configuration
- Shared resource access
- Troubleshooting and validation

---

## Infrastructure Planning (Architecture)

The environment was designed before deployment using structured planning:

- [IP Addressing Plan](./configs/00-ip-addressing-plan.md)
- [Hostname Plan](./configs/01-hostname-plan.md)
- [OU Structure Design](./configs/02-ou-structure.md)

These define the foundation of the environment, including network layout, naming conventions, and directory structure.

---

## Full Lab Documentation

Use the sections below to review the project from start to finish.

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