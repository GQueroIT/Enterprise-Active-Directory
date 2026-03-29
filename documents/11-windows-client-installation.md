\# Step 11 - Windows Client Installation and Preparation



---



\## Objective



In this step, I installed and configured a Windows client machine to prepare it for domain integration.



The goal was to have a clean, properly configured system ready to join the Active Directory domain.



---



\## Technologies Used



Windows 10 / Windows 11



Oracle VirtualBox



---



\## Key Concepts



Client Machine Setup



Operating System Installation



Network Configuration



Domain Preparation



Host Communication



---



\## Configuration / Implementation



\### 1. Create Windows Client Virtual Machine



Created a new virtual machine in VirtualBox.



Allocated appropriate CPU, RAM, and storage resources.



Attached the Windows ISO for installation.



---



\### 2. Install Windows Operating System



Booted the virtual machine and completed the Windows installation process.



Configured basic system settings.



Created a local user account.



---



\### 3. Configure Network Adapter



Set up network adapter to match lab environment.



Configured adapter for communication with DC01.



Ensured the client is on the same network as the Domain Controller.



---



\### 4. Verify Network Connectivity



Opened Command Prompt and tested connectivity.



Pinged the Domain Controller successfully.



Confirmed network communication is working.



---



\### 5. Configure DNS Settings



Set the client’s DNS server to point to DC01.



Verified DNS configuration is applied correctly.



---



\### 6. Prepare for Domain Join



Confirmed system name and configuration.



Verified the client can resolve:



relentixtest.local



Ensured the machine is ready to join the domain.



---



\## Validation / Verification



Confirmed Windows client is installed and operational.



Verified network connectivity to the Domain Controller.



Validated DNS configuration and domain resolution.



Confirmed the system is ready for domain join.



---



\## Evidence



Screenshots for this step:



screenshots/step-11/



---



\## Key Takeaways



Proper client setup is required before joining a domain.



DNS configuration is critical for locating the Domain Controller.



Network connectivity must be verified before domain integration.



This step prepares the environment for successful domain join.



---

