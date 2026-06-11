# Network Troubleshooting Guide

A practical, technician‑focused guide for diagnosing and resolving common network issues in Windows environments.  
This document reflects real 1st Line Support workflows and ITIL‑aligned troubleshooting practices.

---

## 🧭 1. Initial Triage Questions

Before running commands, confirm:

- Is the issue affecting Wi‑Fi, Ethernet, or both?
- Is the user working from home, office, or remote VPN?
- Is the issue device‑specific or affecting multiple users?
- Is the issue intermittent or constant?
- Has anything changed recently (router reboot, updates, new device)?
- Can the user access *anything* (local network, internet, shared drives)?

Document all findings in the ticket.

---

## 🧪 2. Essential Troubleshooting Commands

These commands form the backbone of network diagnostics.

### **Check IP configuration**
ipconfig /all
Look for:
- IPv4 address  
- Default gateway  
- DNS servers  
- DHCP enabled  
- 169.254.x.x → DHCP failure  

---

### **Test basic connectivity**
ping 8.8.8.8 -n 10
Interpretation:
- Replies = internet reachable  
- High latency = congestion or Wi‑Fi interference  
- Timeouts = routing or ISP issue  

---

### **Test DNS resolution**
nslookup microsoft.com
If IP resolves → DNS working  
If “timeout” or “server unknown” → DNS issue  

---

### **Trace route to identify where traffic fails**
tracert google.com
Useful for:
- VPN routing issues  
- ISP problems  
- Packet loss at specific hops  

---

### **Check active connections**
netstat -ano

Shows:
- Listening ports  
- Established connections  
- Potential malware or unknown services  

---

### **Reset network stack**
ipconfig /flushdns
ipconfig /release
ipconfig /renew
netsh winsock reset
netsh int ip reset
Restart device afterwards.

---

## 📶 3. Wi‑Fi Troubleshooting

### **Check signal strength**
netsh wlan show interfaces
Signal:
- >70% = good  
- <40% = poor → likely dropouts  

### **Common Wi‑Fi issues**
- Interference (microwaves, neighbours, thick walls)  
- Wrong band (2.4GHz vs 5GHz)  
- Congested channel  
- Router too far away  

### **Fixes**
- Move closer to router  
- Switch to 5GHz  
- Restart router  
- Forget & reconnect to network  

---

## 🔌 4. Ethernet Troubleshooting

### **Check link status**
- Cable firmly connected  
- Switch port lights active  
- Try another port  
- Try another cable  

### **Common Ethernet issues**
- Damaged cable  
- Disabled adapter  
- Incorrect VLAN (office environments)  
- Static IP misconfiguration  

---

## 🔐 5. VPN Troubleshooting

### **Common VPN symptoms**
- Can access internet but not internal resources  
- Teams/Outlook disconnect when VPN enabled  
- Split tunnelling misconfigured  

### **Steps**
1. Disconnect VPN → test internet  
2. Reconnect VPN → run:
ipconfig /all
route print
3. Check DNS suffix  
4. Check if internal IP ranges are reachable  
5. Restart VPN client  

Escalate if routing tables look incorrect.

---

## 🖧 6. Shared Drive & Internal Resource Issues

### **Test connectivity to server**
ping SERVERNAME
ping 192.168.x.x

### **Check SMB ports**
- 445 (SMB)  
- 139 (NetBIOS)  

### **Flush cached credentials**
control keymgr.dll

### **Check DNS resolution**
nslookup SERVERNAME

---

## 🌍 7. Internet Connectivity Flow

Use this flow to isolate the issue:

### **1. Can the device ping itself?**
ping 127.0.0.1
If no → NIC issue.

### **2. Can it ping the gateway?**
ping 192.168.1.1
If no → local network issue.

### **3. Can it ping an external IP?**
ping 8.8.8.8
If no → ISP or router issue.

### **4. Can it resolve DNS?**
nslookup google.com
If no → DNS issue.

---

## 🧠 8. Common Root Causes

- Incorrect DNS servers  
- DHCP failure  
- Weak Wi‑Fi signal  
- VPN routing conflict  
- ISP outage  
- Misconfigured static IP  
- Corrupted network stack  
- Faulty Ethernet cable  
- Switch port failure  
- Firewall blocking traffic  

---

## 🧪 9. Evidence Collection

Always gather:

- ipconfig /all output  
- Ping results  
- Traceroute results  
- DNS lookup results  
- Wi‑Fi signal strength  
- Screenshot of network status  
- Steps to reproduce  

Attach logs to the ticket.

---

## 🚨 10. Escalation Criteria

Escalate to 2nd Line / Network Team if:

- Multiple users affected  
- Suspected switch or router failure  
- VLAN misconfiguration  
- DHCP server issues  
- DNS server unreachable  
- VPN routing tables incorrect  
- Packet loss at internal hops  
- Firewall rules blocking traffic  

Document all steps taken before escalation.

---

## 🛡️ 11. Preventative Actions

- Keep NIC drivers updated  
- Restart router weekly (home users)  
- Use 5GHz Wi‑Fi where possible  
- Avoid deep nesting of network devices  
- Educate users on VPN behaviour  
- Ensure DNS servers are correct  

---

## 📚 Related Pages

- [Networking Fundamentals](networking-fundamentals.md)  
- [Home Network Setup](home-network-setup.md)  
- [Networking Scenarios](networking-scenarios.md)

---

## ✔️ Status: Complete

This page forms part of the Networking Basics section.
