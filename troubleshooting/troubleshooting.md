---

## Step 21 - RSAT Installation and Active Directory Connectivity Troubleshooting

### Overview
During the validation phase of Help Desk delegation from CLIENT01, multiple issues were encountered related to network configuration, DNS resolution, and RSAT installation. This required a full troubleshooting process involving both CLIENT01 and DC01.

---

### Issue 1: RSAT Installation Failure

**Error:**
Add-WindowsCapability failed with error code 0x8024402C

**Observation:**
- RSAT installation would not complete
- Windows Update services could not reach external servers

**Root Cause:**
- CLIENT01 had no internet connectivity
- The system was only connected to a Host-Only network (192.168.56.x)
- No default gateway was present

**Resolution:**
- Powered off CLIENT01
- Added a second network adapter (NAT) in VirtualBox
- Restarted CLIENT01
- Verified new adapter received:
  - IP address (10.x.x.x)
  - Default gateway (10.0.2.2)
- Confirmed internet connectivity using:
  - ping 8.8.8.8
  - nslookup microsoft.com
- Successfully installed RSAT tools using PowerShell

---

### Issue 2: Active Directory Not Accessible from CLIENT01

**Error:**
"The server is not operational"

**Observation:**
- Active Directory Users and Computers (dsa.msc) failed to load
- Domain could not be resolved

**Root Cause:**
- DNS was incorrectly configured to use public DNS servers (8.8.8.8 / 1.1.1.1)
- Active Directory requires internal DNS (domain controller) for resolution

**Resolution:**
- Reconfigured CLIENT01 DNS settings:
  - Primary DNS: 192.168.56.10 (DC01)
- Removed public DNS entries from the domain adapter
- Flushed DNS cache:
  ipconfig /flushdns
- Verified domain resolution:
  nslookup relentixtest.local
- Confirmed domain controller discovery:
  nltest /dsgetdc:relentixtest.local

---

### Issue 3: DNS Forwarders Failing on DC01

**Observation:**
- DNS forwarders showed:
  - "Unable to resolve"
  - "An unknown error occurred"
- External DNS queries failed from DC01

**Root Cause:**
- DC01 did not have internet connectivity
- Only Host-Only adapter was configured

**Resolution:**
- Powered off DC01
- Added second network adapter (NAT)
- Restarted DC01
- Verified internet connectivity:
  - ping 8.8.8.8
  - nslookup google.com
- Reconfigured DNS forwarders:
  - 8.8.8.8
  - 1.1.1.1
- Verified forwarders validated successfully

---

### Issue 4: Dual Adapter DNS Configuration (Critical)

**Observation:**
- CLIENT01 required both:
  - Domain connectivity (Host-Only adapter)
  - Internet connectivity (NAT adapter)

**Challenge:**
- Internet access was tied to the NAT adapter
- Domain access required DNS from DC01

**Resolution:**
- Configured adapters as follows:

**Ethernet (Host-Only Adapter):**
- IP: 192.168.56.20
- DNS: 192.168.56.10 (DC01)

**Ethernet 2 (NAT Adapter):**
- Provided internet connectivity
- DNS configured to support external resolution when needed

- Ensured domain DNS (DC01) remained primary for Active Directory functionality

---

### Final Result

- CLIENT01 successfully communicates with DC01
- Active Directory accessible from CLIENT01 using RSAT
- DNS resolution functioning for:
  - Internal domain (relentixtest.local)
  - External internet queries
- Help Desk delegation successfully validated from client machine

---

### Key Takeaways

- Active Directory is fully dependent on proper DNS configuration
- Domain clients must prioritize the domain controller for DNS resolution
- Dual network adapters are required in lab environments to simulate:
  - Internal enterprise network
  - External internet access
- DNS forwarders are essential for bridging internal and external name resolution
- Troubleshooting required a layered approach:
  - Network configuration
  - DNS validation
  - Service accessibility

---

### Evidence

Screenshots documenting this process are located in:

../screenshots/troubleshooting/step-21-troubleshoot/