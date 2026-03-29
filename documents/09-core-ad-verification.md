\# Step 09 - Core Active Directory Verification



---



\## Objective



In this step, I verified that all core Active Directory components are functioning correctly after domain setup and initial configuration.



This ensures the environment is stable before proceeding to further configurations.



---



\## Technologies Used



Windows Server 2022



Active Directory Users and Computers (ADUC)



Command Prompt



DNS Manager



---



\## Key Concepts



Active Directory Validation



Domain Services Verification



DNS Resolution



Authentication Testing



Directory Integrity



---



\## Configuration / Implementation



\### 1. Verify Domain Controller Status



Confirmed DC01 is operating as a Domain Controller.



Verified domain:



relentixtest.local



---



\### 2. Verify Organizational Units



Opened Active Directory Users and Computers.



Confirmed all OUs exist:



IT



HR



Workstations



Servers



Service Accounts



---



\### 3. Verify User Accounts



Confirmed administrative account exists:



gquero



Verified correct OU placement



---



\### 4. Verify Group Membership



Opened Command Prompt and ran:



whoami /groups



Confirmed Domain Admins membership is applied



---



\### 5. Verify DNS Functionality



Opened DNS Manager.



Confirmed forward lookup zone exists:



relentixtest.local



Verified proper DNS records are present



---



\### 6. Verify Authentication



Logged into the system using domain credentials.



Confirmed successful authentication against the domain



---



\## Validation / Verification



Confirmed Domain Controller is functioning properly



Verified OU structure and user organization



Validated DNS resolution and domain services



Confirmed successful domain authentication



---



\## Evidence



Screenshots for this step:



screenshots/step-09/



---



\## Key Takeaways



Verification ensures all Active Directory components are working as expected



DNS is critical for domain functionality and authentication



Proper validation prevents issues in later configurations



This step confirms a stable and functional Active Directory environment



---

