\# Step 04 - Windows Server Virtual Machine Creation



---



\## Objective



In this step, I created the Windows Server virtual machine that will serve as the Domain Controller (DC01) for the Active Directory environment. The goal was to establish the foundation for domain services within the lab.



---



\## Technologies Used



\- Oracle VirtualBox  

\- Windows Server 2022 ISO  

\- Windows 11 (Host Machine)  



---



\## Key Concepts



\- Virtual Machine Creation  

\- Operating System Installation  

\- Resource Allocation  

\- Boot Configuration  

\- Server Role Preparation  



---



\## Configuration / Implementation



\### 1. Created New Virtual Machine



I created a new virtual machine in VirtualBox configured for:



\- Windows Server 2022  

\- 64-bit architecture  



This VM will act as the Domain Controller (DC01).



---



\### 2. Allocated System Resources



Configured the VM with appropriate resources:



\- RAM allocation  

\- CPU cores  

\- Storage (Virtual Disk)  



This ensures stable performance for Active Directory services.



---



\### 3. Attached Windows Server ISO



Mounted the Windows Server ISO file to the virtual machine to begin installation.



This allows the VM to boot into the Windows Server installation environment.



---



\### 4. Configured Network Adapters



Set up dual network adapters:



\- Adapter 1: NAT → internet access  

\- Adapter 2: Host-Only → internal lab communication  



This configuration enables controlled networking between lab machines.



---



\### 5. Installed Windows Server



Booted the VM and completed the Windows Server installation process:



\- Selected OS version  

\- Configured system settings  

\- Set Administrator password  



---



\### 6. Completed Initial Server Setup



After installation:



\- Logged into the system  

\- Verified basic system functionality  

\- Confirmed OS was running properly  



---



\## Validation / Verification



\- Verified successful OS installation  

\- Confirmed VM boots correctly  

\- Validated network adapter configuration  

\- Ensured system stability after login  



---



\## Evidence



Screenshots for this step are located in:



`screenshots/step-04/`



---



\## Key Takeaways



\- Proper VM configuration is critical for stable server performance  

\- Network setup must be planned before domain configuration  

\- The Domain Controller is the core of the Active Directory environment  



---

