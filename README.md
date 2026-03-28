# Active Directory Lab

## Overview
This project documents the full build of an Active Directory environment using Windows Server in a virtualized lab. The goal of this lab was to understand domain services, user and organizational structure, DNS integration, and client preparation.

## Objective
- Build a domain controller from scratch
- Configure Active Directory Domain Services (AD DS)
- Design and implement an Organizational Unit (OU) structure
- Validate DNS and domain functionality
- Prepare a Windows client for domain integration

## Technologies Used
- Windows Server
- Active Directory Domain Services (AD DS)
- DNS
- Oracle VirtualBox
- PowerShell
- Git / GitHub

## Lab Structure

### Documentation
- documents/ ? Step-by-step lab breakdown

### Configuration
- configs/ ? IP plan, hostnames, OU design

### Evidence
- screenshots/ ? Visual proof for each step
- logs/ ? Step-based verification logs

### Automation
- scripts/ ? PowerShell helper scripts

## Featured Steps

### Step 06 – Domain Promotion
- Installed AD DS and promoted server to domain controller
- Created domain: relentixtest.local

### Step 08 – OU and Admin Setup
- Created Organizational Units:
  - IT
  - HR
  - Servers
  - Service Accounts
  - Workstations
- Created domain admin account (gquero)

### Step 10 – Final AD Validation
- Verified domain functionality
- Confirmed DNS configuration
- Validated OU structure and admin placement

## Key Takeaways
- Understood how Active Directory integrates with DNS
- Learned importance of static IP addressing for domain controllers
- Implemented structured OU design for scalability
- Gained hands-on experience with domain validation and troubleshooting

## Author
Gabriel Quero
