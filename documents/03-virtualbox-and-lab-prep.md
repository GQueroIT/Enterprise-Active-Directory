\# Step 03 - VirtualBox Setup and Lab Preparation



---



\## Objective



In this step, I prepared the lab environment by installing and configuring VirtualBox. The goal was to create a stable virtualization environment that would support running Windows Server and client machines for the Active Directory lab.



---



\## Technologies Used



\- Oracle VirtualBox  

\- Windows 11 (Host Machine)  

\- ISO Images (Windows Server / Windows Client)  



---



\## Key Concepts



\- Virtualization  

\- Hypervisor Configuration  

\- Resource Allocation  

\- Network Adapter Configuration  

\- Lab Environment Design  



---



\## Configuration / Implementation



\### 1. Installed VirtualBox



I installed Oracle VirtualBox on my host machine to serve as the hypervisor for running virtual machines.



This allows multiple operating systems to run simultaneously in an isolated environment.



---



\### 2. Downloaded Required ISO Files



I obtained the necessary ISO files for:



\- Windows Server (Domain Controller)  

\- Windows Client (CLIENT01)  



These will be used to install the operating systems inside the virtual machines.



---



\### 3. Created Initial Virtual Machine Plan



Planned the lab environment to include:



\- 1 Domain Controller (DC01)  

\- 1 Client Machine (CLIENT01)  



This setup simulates a basic enterprise network.



---



\### 4. Configured VirtualBox Networking



Prepared the networking setup using:



\- NAT Adapter → for internet access  

\- Host-Only Adapter → for internal lab communication  



This design allows:



\- isolated communication between lab machines  

\- controlled access to external networks  



---



\### 5. Allocated System Resources



Configured virtual machine settings to ensure stability:



\- RAM allocation  

\- CPU allocation  

\- Storage configuration  



This ensures both systems can run efficiently without impacting the host machine.



---



\## Validation / Verification



\- Verified VirtualBox installation  

\- Confirmed ISO files were accessible  

\- Validated network adapter configuration  

\- Ensured VM settings were properly configured  



---



\## Evidence



Screenshots for this step are located in:



`screenshots/step-03/`



---



\## Key Takeaways



\- Virtualization is essential for building safe and flexible lab environments  

\- Proper network design is critical for simulating real-world infrastructure  

\- Planning the environment before deployment prevents configuration issues later  



---

