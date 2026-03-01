\## Step 05 – Create Domain Controller VM (DC01)



\### Objective

Create Windows Server virtual machine that will later be promoted to Domain Controller.



\### VM Configuration

\- Name: DC01

\- RAM: 6GB (6144 MB)

\- CPU: 4 cores

\- Disk: 80GB (VDI, Dynamic)

\- Adapter 1: NAT (Internet access)

\- Adapter 2: Host-Only (Internal lab network)



---



\### Network Design (Architecture)



DC01 uses dual network adapters:



1\. NAT Adapter

&nbsp;  - Used temporarily for:

&nbsp;    - Windows Updates

&nbsp;    - Role installation downloads

&nbsp;  - Provides internet access via host



2\. Host-Only Adapter

&nbsp;  - Used for:

&nbsp;    - Active Directory

&nbsp;    - DNS

&nbsp;    - Domain joining

&nbsp;    - GPO management

&nbsp;  - Fully isolated lab network

&nbsp;  - Not exposed to home network



This design simulates an internal enterprise environment while remaining sandboxed.



---



\### Evidence

Screenshots located in:

screenshots/step-05/

