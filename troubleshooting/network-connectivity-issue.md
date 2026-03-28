# Network Connectivity Issue (DC01 and CLIENT01)

---

## Objective

In this scenario, I identified and resolved a network communication issue between DC01 and CLIENT01 that prevented domain join validation during Step 13.

---

## Environment

- Hypervisor: VirtualBox
- Domain Controller: DC01
- Client Machine: CLIENT01
- Internal Network: 192.168.56.0/24
- Expected DC IP: 192.168.56.10
- Expected Client IP: 192.168.56.20

---

## Issue

CLIENT01 was unable to communicate with DC01 across the internal lab network.

This prevented domain join validation and indicated a breakdown in internal network connectivity.

---

## Symptoms

- Ping requests between DC01 and CLIENT01 failed
- CLIENT01 appeared correctly configured at first glance
- DC01 was not using the intended static IP
- Communication only succeeded after firewall rules were adjusted

---

## Root Cause Analysis

### 1. Incorrect IP Configuration on DC01

DC01 was using a dynamically assigned IP address instead of the required static configuration.

This created inconsistency in communication and DNS resolution.

---

### 2. Multiple Active Network Adapters

Both NAT and Host-only adapters were active simultaneously.

This introduced ambiguity in routing and made troubleshooting more difficult.

---

### 3. Windows Firewall Blocking ICMP Traffic

Even after correcting the network configuration, ICMP (ping) traffic was blocked due to default Windows Firewall settings.

---

## Resolution

### Step 1 - Align VirtualBox Network Adapters

Both machines were verified to use:

- Host-only Adapter
- VirtualBox Host-Only Ethernet Adapter

---

### Step 2 - Configure Static IP on DC01

IP Address: 192.168.56.10  
Subnet Mask: 255.255.255.0  
Default Gateway: (blank)  
DNS Server: 192.168.56.10

---

### Step 3 - Verify CLIENT01 Configuration

IP Address: 192.168.56.20  
Subnet Mask: 255.255.255.0  
Default Gateway: (blank)  
DNS Server: 192.168.56.10

---

### Step 4 - Test Connectivity

Run the following commands from both machines:

ping 192.168.56.10  
ping 192.168.56.20

Initial tests failed, confirming a communication issue.

---

### Step 5 - Temporarily Disable Firewall for Testing

Firewall was temporarily disabled during testing to confirm whether Windows Firewall was blocking ICMP traffic.

Command used:

netsh advfirewall set allprofiles state off

After this test, communication succeeded, which confirmed that firewall filtering was part of the issue.

This was only used for troubleshooting and not treated as the permanent solution.

---

### Step 6 - Create a Secure Firewall Rule

Instead of leaving the firewall disabled, a specific inbound rule was added to allow ICMPv4 traffic while keeping firewall protection enabled.

Command used:

netsh advfirewall firewall add rule name="Allow ICMPv4-In" protocol=icmpv4 dir=in action=allow

This restored ping functionality in a controlled and secure way.

---

## Validation

- Successful ping responses between DC01 and CLIENT01
- Stable communication across the internal network
- Firewall issue confirmed and resolved with a targeted rule
- Environment ready for domain join

---

## Evidence

Screenshots for this issue are located in:

`screenshots/troubleshooting/`

Included evidence:

- CLIENT01 IP Config Correct
- DC IP Config Wrong
- DC IP Config Corrected
- DC Ping Fail
- Communication After Firewall Disabled
- ICMP Rule Added Successful

---

## Security Consideration

While disabling the firewall helped isolate the root cause, it is not a secure long-term fix.

A more appropriate solution was to create a targeted inbound ICMP rule. This preserved firewall protection while allowing the required traffic for connectivity validation.

This approach is more consistent with real-world administrative practice.

---

## Key Takeaways

- Domain Controllers must use a static IP and self-referenced DNS
- VirtualBox adapter alignment is critical in lab environments
- Multiple adapters can create routing confusion
- Windows Firewall can block valid internal traffic
- Connectivity must always be validated before domain operations
- Secure rule-based fixes are better than leaving protections disabled

---