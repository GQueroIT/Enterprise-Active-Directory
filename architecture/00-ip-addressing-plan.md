# IP Addressing Plan

## Domain Controller
- Hostname: DC01
- Role: Domain Controller / DNS Server
- Network Design: Adapter 1 NAT, Adapter 2 Host-only
- Static IP: 192.168.56.10
- Subnet Mask: 255.255.255.0
- Default Gateway: None
- Preferred DNS: 127.0.0.1

## Windows Client
- Hostname: CLIENT01
- Role: Windows 10 Domain Client
- Planned DNS Target: 192.168.56.10

## Network Notes
- Adapter 1 (NAT) provides outbound internet access.
- Adapter 2 (Host-only) is used for internal lab communication.
- The domain controller is configured as the DNS server for the lab environment.

