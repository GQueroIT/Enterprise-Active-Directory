# Enterprise Active Directory Infrastructure

<p align="center">
  <img src="https://img.shields.io/badge/Windows%20Server-Active%20Directory-blue?logo=windows&logoColor=white" />
  <img src="https://img.shields.io/badge/AD%20DS-Domain%20Services-green" />
  <img src="https://img.shields.io/badge/DNS-Network%20Services-orange" />
  <img src="https://img.shields.io/badge/Group%20Policy-GPO-purple" />
  <img src="https://img.shields.io/badge/Identity%20Management-Enterprise-red" />
  <img src="https://img.shields.io/badge/VirtualBox-Lab%20Environment-blue" />
  <img src="https://img.shields.io/badge/PowerShell-Automation-black?logo=powershell&logoColor=white" />
</p>

This repository represents the design, deployment, and validation of a structured Active Directory environment built to reflect real-world identity and access management practices.

This is not just a domain setup.  
It is a controlled infrastructure used to manage users, systems, permissions, and policies in a way that mirrors enterprise environments.

---

## How to Navigate This Repository

If you are reviewing this project, here is the best way to approach it:

- Start with **Lab Overview** for context  
- Review **Featured Sections** below for key implementations  
- Follow the **Step-by-Step Build** to understand full deployment  
- Explore **Troubleshooting** to see real-world problem solving  

Each section reflects a real administrative workflow:

- Environment setup  
- Domain configuration  
- Identity and access management  
- Policy enforcement  
- Validation and troubleshooting  

---

## Featured Sections (Start Here)

These sections highlight the most important parts of the environment:

- Active Directory Deployment  
- OU Structure Design  
- Group Policy Configuration  
- AGDLP Implementation  
- Troubleshooting (Step 21 - RSAT + DNS issues)  

These demonstrate how identity, access, and policy are structured and validated.

---

## Overview

This project simulates an enterprise Active Directory environment using Windows Server and VirtualBox.

The environment includes:

- Domain Controller (DC01)  
- Organizational Unit (OU) structure  
- User and group management  
- Group Policy configuration  
- File share with NTFS permissions  
- Domain-joined workstation  

Everything is built with a focus on structure, scalability, and real-world administration practices.

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

## Core Skills Demonstrated

### Identity and User Administration
- Created and managed domain users and security groups  
- Built Organizational Units (OUs) to structure administrative control  
- Supported user access through centralized identity management  

### Group Policy and Access Control
- Applied Group Policy Objects (GPOs) to control user environments  
- Verified policy application and login behavior  
- Implemented structured policy-based management  

### DNS and Authentication Troubleshooting
- Diagnosed DNS issues affecting domain connectivity  
- Verified domain controller discovery and authentication  
- Restored access through correct name resolution configuration  

### Documentation and Validation
- Captured screenshots and validation steps throughout the build  
- Organized implementation into structured phases  
- Maintained clean, professional documentation for review  

---

## Infrastructure Planning (Architecture)

- [IP Addressing Plan](./architecture/00-ip-addressing-plan.md)  
- [Hostname Plan](./architecture/01-hostname-plan.md)  
- [OU Structure Design](./architecture/02-ou-structure.md)  

These define network layout, naming conventions, and directory structure.

---

## Lab Build (Step-by-Step)

Each phase reflects a real-world deployment process.

### Core Setup
- [Step 00 - Lab Overview](./documents/step-00-lab-overview.md)  
- [Step 01 - Repository Setup](./documents/step-01-repo-setup.md)  
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
- Password and account lockout policies  
- Role-based access control (AGDLP)  
- NTFS and share permissions  
- GPO-based drive mapping  
- Advanced audit policy configuration  
- File access auditing (Event ID 4663)  
- Security event monitoring  

---

## Troubleshooting (Real-World Scenarios)

This project includes multi-layer troubleshooting:

- Network connectivity issues (VirtualBox)  
- DNS misconfiguration impacting domain resolution  
- File share access failures  
- Permission conflicts (AGDLP)  
- GPO application issues  
- Security policy inconsistencies  

### Highlight — Step 21
- Dual network adapter configuration (NAT + Host-Only)  
- DNS routing issues  
- RSAT installation failure  
- Client-side AD access troubleshooting  

---

## Key Highlights

- Built complete Active Directory infrastructure from scratch  
- Implemented enterprise-level AGDLP model  
- Configured Group Policy for user environment automation  
- Applied domain-wide security policies  
- Implemented auditing and validated via logs  
- Performed multi-layer troubleshooting  
- Validated environment from server and client perspectives  
- Maintained structured, professional documentation  

---

## Final Outcome

This project represents a fully functional enterprise Active Directory environment.

It demonstrates:

- Identity and access management  
- Infrastructure deployment  
- Security enforcement  
- Monitoring and auditing  
- Real-world troubleshooting  

This is a complete system build and validation project.