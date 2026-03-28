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

- [Full Lab Documentation](#documentation)
- [Configuration Files](#configuration)
- [Evidence and Logs](#evidence)

---

## Documentation

The lab is broken down step-by-step to simulate a real-world deployment process:

- [Step 00 - Lab Overview](./documents/00-lab-overview.md)
- [Step 01 - Repo and Screenshot Structure](./documents/01-repo-and-screenshot-structure.md)
- [Step 02 - Git and GitHub Setup](./documents/02-git-and-github-setup.md)
- [Step 03 - VirtualBox and Lab Prep](./documents/03-virtualbox-and-lab-prep.md)
- [Step 04 - Windows Server VM Creation](./documents/04-windows-server-vm-creation.md)
- [Step 05 - Network Configuration and Static IP](./documents/05-network-configuration-and-static-ip.md)
- [Step 06 - AD DS and Domain Promotion](./documents/06-adds-and-domain-promotion.md)
- [Step 07 - Post Promotion Validation](./documents/07-post-promotion-validation.md)
- [Step 08 - Admin Account and OU Creation](./documents/08-admin-account-and-ou-creation.md)
- [Step 09 - Core AD Verification](./documents/09-core-ad-verification.md)
- [Step 10 - Final AD Validation](./documents/10-final-ad-validation.md)
- [Step 11 - Windows Client Installation](./documents/11-windows-client-installation.md)
- [Step 12 - Domain Users and Security Groups](./documents/12-domain-users-and-groups.md)

---

## Configuration

These files define the environment setup and structure:

- [IP Addressing Plan](./configs/ip-addressing-plan.md)
- [Hostname Plan](./configs/hostname-plan.md)
- [OU Structure](./configs/ou-structure.md)

---

## Evidence

All work is supported with screenshots and logs:

- Screenshots: `./screenshots/`
- Step 10 Validation Log: `./logs/step-10-ad-validation.txt`
- Step 11 Client Build Log: `./logs/step-11-client-build-notes.txt`

---

## Automation

Automation used to streamline documentation:

- PowerShell Screenshot Sync Script: `./scripts/sync-screenshots.ps1`

---

## Key Takeaways (So Far)

- Domain Controllers must use static IP addressing for stability  
- Active Directory relies heavily on DNS for functionality  
- OU structure is critical for scalable administration  
- Proper validation ensures a stable domain before client integration  

---

## Author

Gabriel Quero