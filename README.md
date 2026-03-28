\# Active Directory Lab (Enterprise Simulation)



\## Objective



This project simulates a real-world Active Directory enterprise environment using Windows Server and a client machine. The goal is to demonstrate hands-on experience with domain services, user and group management, and structured lab documentation.



---



\## Environment



\- Hypervisor: VirtualBox  

\- Domain Controller: Windows Server 2022 (DC01)  

\- Client Machine: Windows 10 (CLIENT01)  

\- Domain: relentixtest.local  



---



\## Network Design



\- Adapter 1: NAT (internet access)  

\- Adapter 2: Host-only (internal lab network)  

\- DC Static IP: 192.168.56.10  

\- DNS: 127.0.0.1 (self)  



---



\## Project Structure



\### Documentation



\- \[Step 00 - Lab Overview](./documents/00-lab-overview.md)

\- \[Step 01 - Repo and Screenshot Structure](./documents/01-repo-and-screenshot-structure.md)

\- \[Step 02 - Git and GitHub Setup](./documents/02-git-and-github-setup.md)

\- \[Step 03 - VirtualBox and Lab Prep](./documents/03-virtualbox-and-lab-prep.md)

\- \[Step 04 - Windows Server VM Creation](./documents/04-windows-server-vm-creation.md)

\- \[Step 05 - Network Configuration and Static IP](./documents/05-network-configuration-and-static-ip.md)

\- \[Step 06 - AD DS and Domain Promotion](./documents/06-adds-and-domain-promotion.md)

\- \[Step 07 - Post Promotion Validation](./documents/07-post-promotion-validation.md)

\- \[Step 08 - Admin Account and OU Creation](./documents/08-admin-account-and-ou-creation.md)

\- \[Step 09 - Core AD Verification](./documents/09-core-ad-verification.md)

\- \[Step 10 - Final AD Validation](./documents/10-final-ad-validation.md)

\- \[Step 11 - Windows Client Installation](./documents/11-windows-client-installation.md)

\- \[Step 12 - Domain Users and Security Groups](./documents/12-domain-users-and-groups.md)



\### Configuration



\- \[IP Addressing Plan](./configs/ip-addressing-plan.md)

\- \[Hostname Plan](./configs/hostname-plan.md)

\- \[OU Structure](./configs/ou-structure.md)



---



\## Evidence



\- Screenshots: `./screenshots/`

\- Step 10 Validation Log: `./logs/step-10-ad-validation.txt`

\- Step 11 Client Build Log: `./logs/step-11-client-build-notes.txt`



---



\## Automation



\- PowerShell Screenshot Sync Script: `./scripts/sync-screenshots.ps1`



---



\## Key Takeaways (So Far)



\- Domain Controllers must use static IP addressing for stability  

\- Active Directory relies heavily on DNS for functionality  

\- OU structure is critical for scalable administration  

\- Proper validation ensures a stable domain environment before client integration  



---



\## Author



Gabriel Quero

