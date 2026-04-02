# Active Directory Lab (Enterprise Simulation)

Hands-on Active Directory lab focused on domain services, user and group management, organizational structure, and real-world enterprise configuration using Windows Server.

`Portfolio` `Active Directory` `Windows Server` `AD DS` `Lab` `Documented`

This repository is organized to reflect practical system administration skills, clean documentation, and proof of work through structured lab steps, configurations, and supporting evidence.

---

## Objective

The purpose of this lab is to simulate a real-world enterprise Active Directory environment and document each step in a structured, professional manner.

My goal is to build a strong foundation in identity and access management, domain services, and enterprise infrastructure while maintaining clean and consistent documentation.

---

## Featured Sections

The following sections highlight the core components of this lab:

- [Full Lab Documentation](./documents/)
- [Configuration Files](./configs/)
- [Evidence and Logs](./screenshots/)
- [Troubleshooting](./troubleshooting/README.md)

---

## Documentation

The lab is broken down by step to simulate a real deployment process:

- [Step 00 - Lab Overview](./documents/00-lab-overview.md)
- [Step 01 - Repository and Screenshot Structure Setup](./documents/01-repo-and-screenshot-structure.md)
- [Step 02 - Git and GitHub Repository Setup](./documents/02-git-and-github-setup.md)
- [Step 03 - VirtualBox Setup and Lab Preparation](./documents/03-virtualbox-and-lab-prep.md)
- [Step 04 - Windows Server Virtual Machine Creation](./documents/04-windows-server-vm-creation.md)
- [Step 05 - Network Configuration and IP Setup](./documents/05-network-configuration-and-ip-setup.md)
- [Step 06 - Install Active Directory Domain Services (AD DS)](./documents/06-adds-and-domain-promotion.md)
- [Step 07 - Domain Controller Promotion and Domain Creation](./documents/07-post-promotion-validation.md)
- [Step 08 - Administrative Account and OU Creation](./documents/08-admin-account-and-ou-creation.md)
- [Step 09 - Core Active Directory Verification](./documents/09-core-ad-verification.md)
- [Step 10 - Final Active Directory Validation](./documents/10-final-ad-validation.md)
- [Step 11 - Windows Client Installation and Preparation](./documents/11-windows-client-installation-and-preparation.md)
- [Step 12 - Domain Users and Security Groups Configuration](./documents/12-domain-users-and-groups.md)
- [Step 13 - Domain Join and Client Validation](./documents/13-domain-join-and-client-validation.md)
- [Step 14 - File Share Creation and Permission Configuration](./documents/14-file-share-and-permissions.md)
- [Step 15 - AGDLP Permission Model Implementation](./documents/15-agdlp-permission-model.md)
- [Step 16 - GPO Drive Mapping Implementation](./documents/16-gpo-drive-mapping.md)
- [Evidence Index](./documents/99-evidence-index.md)

---

## Configuration

Core planning and reference files used throughout the build:

- [IP Addressing Plan](./configs/00-ip-addressing-plan.md)
- [Hostname Plan](./configs/01-hostname-plan.md)
- [OU Structure](./configs/02-ou-structure.md)

---

## Evidence and Logs

This lab includes screenshots and supporting logs for validation:

- [Screenshots](./screenshots/)
- [Logs](./logs/)

---

## Troubleshooting

Issues encountered during the lab are documented here:

- [Troubleshooting Index](./troubleshooting/README.md)
- [Network Connectivity Issue](./troubleshooting/network-connectivity-issue.md)
- [Step 15 - AGDLP Access Issue](./troubleshooting/step-15-agdlp-troubleshooting.md)
- [Step 16 - GPO Drive Mapping Issue](./troubleshooting/step-16-gpo-troubleshooting.md)

---

## What This Lab Demonstrates

This lab demonstrates hands-on work in:

Active Directory deployment  
Domain Controller configuration  
DNS setup and validation  
OU design and directory organization  
User and group management  
AGDLP permission model implementation  
NTFS and share permissions  
Group Policy deployment (GPO)  
Drive mapping automation  
Troubleshooting access and policy issues  
VirtualBox-based enterprise lab simulation  

---

## Key Highlights

- Implemented enterprise-level permission model (AGDLP)
- Automated user environment using Group Policy
- Troubleshot real-world GPO and access issues
- Maintained structured documentation and lab consistency

---

## Notes

All major steps in this lab are documented with screenshots and validation to show a full working build and a clear progression from setup through domain integration.