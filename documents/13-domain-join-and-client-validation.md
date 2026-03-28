# Step 13 - Domain Join and Client Validation

---

## Objective

In this step, I joined CLIENT01 to the `relentixtest.local` domain and validated that domain authentication was functioning correctly from the client machine.

---

## Technologies Used

- Windows Server 2022  
- Windows 10 Pro
- Active Directory Domain Services (AD DS)  
- Active Directory Users and Computers (ADUC)  
- PowerShell  
- Command Prompt  

---

## Key Concepts

- Domain Join  
- DNS Resolution  
- Computer Objects in Active Directory  
- Organizational Unit (OU) Placement  
- Domain Authentication  

---

## Client Network Configuration

CLIENT01 was configured with a static IP address on the internal lab network and pointed to DC01 for DNS resolution.

- IP Address: 192.168.56.20  
- Subnet Mask: 255.255.255.0  
- DNS Server: 192.168.56.10  

This configuration ensured that the client could properly locate and communicate with the domain controller.

---

## Connectivity Validation

Before joining the domain, I verified connectivity between CLIENT01 and DC01 using:

- `ipconfig`  
- `ping 192.168.56.10`  
- `nslookup relentixtest.local`  

These checks confirmed correct network placement and DNS functionality.

---

## Domain Join Process

CLIENT01 was joined to the `relentixtest.local` domain using domain administrator credentials.

After a successful join:
- the system prompted for a restart  
- the machine rebooted to apply domain membership  

---

## Domain Login Validation

After reboot, I signed into CLIENT01 using a domain user account to confirm:

- domain authentication was working  
- a user profile was successfully created  
- the client could operate within the domain environment  

---

## Active Directory Validation

On DC01, I verified that the CLIENT01 computer object appeared in Active Directory.

To maintain proper organization within the lab:
- CLIENT01 was moved into the **Workstations OU**

---

## PowerShell Verification

The following commands were used to validate the computer object:

```powershell
Get-ADComputer -Identity CLIENT01
Get-ADComputer -Filter * -SearchBase "OU=Workstations,DC=relentixtest,DC=local"
```

---

## Screenshots

All screenshots for this step are located in:

`/screenshots/step-13/`

---

## Notes

This step transitioned the lab from basic Active Directory configuration into a functional domain environment with real client-to-domain interaction.

It confirms that authentication, DNS resolution, and directory structure are all working together as expected.