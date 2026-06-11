# Networking Fundamentals

A clear, beginner‑friendly guide to the core networking concepts every IT Support Technician must understand.  
This document explains networking in simple terms with real‑world examples and practical relevance.

---

## 🌐 1. What Is a Network?

A **network** is a group of devices connected together so they can share:

- Internet access  
- Files  
- Printers  
- Applications  
- Services (email, Teams, OneDrive, etc.)

Two main types:

- **LAN (Local Area Network)** – your home or office network  
- **WAN (Wide Area Network)** – the internet  

---

## 🧱 2. The OSI Model (Simplified)

The OSI model helps technicians understand where a problem might be happening.

| Layer | Name | What It Does | Example Issue |
|------|------|--------------|----------------|
| 7 | Application | Apps like Outlook, Teams | Outlook not connecting |
| 4 | Transport | TCP/UDP ports | Port 443 blocked |
| 3 | Network | IP addresses, routing | Wrong gateway |
| 2 | Data Link | MAC addresses, switches | Duplicate MAC |
| 1 | Physical | Cables, Wi‑Fi | Loose cable |

**You don’t need to memorise it — just use it to think logically.**

---

## 🧩 3. IP Addresses

An **IP address** identifies a device on a network.

Example:
192.168.1.25

Two types:

- **IPv4** – most common (e.g., 192.168.1.10)  
- **IPv6** – newer, longer format  

### Private IP ranges (used inside homes/offices):

- 192.168.x.x  
- 10.x.x.x  
- 172.16.x.x – 172.31.x.x  

If a device shows **169.254.x.x**, it means:

❌ It failed to get an IP from DHCP.

---

## 🏷️ 4. Subnets & Default Gateway

### **Subnet Mask**
Defines which devices are “local”.

Common:
255.255.255.0

### **Default Gateway**
The router that sends traffic to the internet.

Example:
192.168.1.1

If the gateway is wrong → no internet.

---

## 🎯 5. DNS (Domain Name System)

DNS translates names into IP addresses.

Example:
teams.microsoft.com → 52.113.x.x

If DNS breaks:

- Websites won’t load  
- Outlook won’t connect  
- Teams won’t sign in  

Useful command:
nslookup teams.microsoft.com

---

## 📦 6. DHCP (Dynamic Host Configuration Protocol)

DHCP automatically gives devices:

- IP address  
- Subnet mask  
- Gateway  
- DNS servers  

If DHCP fails → device gets **169.254.x.x** and cannot reach the network.

---

## 🔐 7. NAT (Network Address Translation)

NAT allows many devices to share one public IP address.

Your router does this automatically.

Example:
- Home devices: 192.168.1.x  
- Public IP: 82.15.x.x  

NAT keeps internal devices hidden from the internet.

---

## 🔌 8. Ports & Protocols

Applications use **ports** to communicate.

Common ports:

| Port | Protocol | Used For |
|------|----------|----------|
| 80 | HTTP | Websites |
| 443 | HTTPS | Secure websites, Teams, Outlook |
| 25 | SMTP | Sending email |
| 53 | DNS | Name resolution |
| 3389 | RDP | Remote Desktop |

If a port is blocked → service fails.

---

## 📶 9. Wi‑Fi Basics

### **2.4GHz**
- Longer range  
- Slower  
- More interference  

### **5GHz**
- Faster  
- Shorter range  
- Less interference  

### Common Wi‑Fi issues:
- Weak signal  
- Congested channel  
- Thick walls  
- Router too far away  

---

## 🖧 10. Switches, Routers & Access Points

### **Switch**
Connects devices inside the network.

### **Router**
Connects your network to the internet.

### **Access Point**
Provides Wi‑Fi coverage.

---

## 🧪 11. Useful Networking Commands

### Check IP configuration:
ipconfig /all

### Test connectivity:
ping 8.8.8.8

### Trace route:
tracert google.com

### DNS lookup:
nslookup microsoft.com

---

## 🧠 12. How This Helps in Real IT Support

Understanding these fundamentals helps you troubleshoot:

- Outlook not connecting  
- Teams call issues  
- OneDrive sync failures  
- VPN not working  
- Printer unreachable  
- Wi‑Fi dropouts  
- Slow internet  
- DNS failures  

This is the foundation for all networking troubleshooting.

---

## 📚 Related Pages

- [Network Troubleshooting](network-troubleshooting.md)  
- [Home Network Setup](home-network-setup.md)  
- [Networking Scenarios](networking-scenarios.md)

---

## ✔️ Status: Complete

This page forms part of the Networking Basics section.

