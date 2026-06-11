# Home Network Setup Guide

A practical guide for supporting home users with Wi‑Fi, routers, and basic network configuration.  
This document reflects real IT Support workflows for remote workers and home office environments.

---

## 🧭 1. Initial Assessment Questions

Before troubleshooting or configuring a home network, confirm:

- What type of connection does the user have? (Fibre, FTTC, 4G/5G, DSL)
- Is the user using Wi‑Fi or Ethernet?
- How many devices are affected?
- Is the issue speed‑related, stability‑related, or no connection at all?
- Has the router been restarted recently?
- Is the user using ISP‑provided equipment or their own router?
- Are they using a mesh system or Wi‑Fi extenders?

Document all findings in the ticket.

---

## 🏠 2. Home Network Components (Simple Overview)

### **Router**
- Connects the home to the internet  
- Provides DHCP, NAT, firewall, Wi‑Fi  

### **Modem**
- Converts ISP signal into internet access  
- Sometimes built into the router  

### **Switch**
- Adds more Ethernet ports  

### **Wi‑Fi Access Point**
- Provides wireless coverage  

### **Mesh System**
- Multiple access points working together  
- Better than extenders for large homes  

---

## 📶 3. Wi‑Fi Basics (What Users Need to Know)

### **2.4GHz Band**
- Longer range  
- Slower  
- More interference  
- Best for: smart devices, long distance

### **5GHz Band**
- Faster  
- Shorter range  
- Less interference  
- Best for: laptops, phones, video calls

### **Common Wi‑Fi Problems**
- Thick walls  
- Neighbour interference  
- Router too far away  
- Too many devices  
- Old router firmware  

---

## 🔧 4. Recommended Home Network Setup

### **1. Place the router correctly**
- Central location  
- Off the floor  
- Away from microwaves, TVs, thick walls  
- Not inside cupboards  

### **2. Use Ethernet where possible**
Best for:
- Work laptops  
- Desktop PCs  
- Smart TVs  
- Gaming consoles  

### **3. Use a mesh system for large homes**
Mesh is better than extenders because:
- One network name  
- Seamless roaming  
- Better stability  

### **4. Separate SSIDs (optional)**
Some routers allow:
- “Home‑WiFi‑2G”
- “Home‑WiFi‑5G”

Useful for troubleshooting.

---

## 🛠️ 5. Home Network Troubleshooting Steps

### **Step 1 — Restart the Router**
Fixes most issues.

Ask user to:
- Turn off router  
- Wait 30 seconds  
- Turn back on  
- Wait 2–3 minutes  

---

### **Step 2 — Check Device IP Address**
Run:
ipconfig /all

Look for:
- **192.168.x.x / 10.x.x.x** → OK  
- **169.254.x.x** → DHCP failure  

---

### **Step 3 — Test Connectivity**
ping 8.8.8.8 -n 10
If replies → internet OK  
If timeouts → router/ISP issue  

---

### **Step 4 — Test DNS**
nslookup google.com
If fails → DNS issue  
Switch to:
- 8.8.8.8  
- 1.1.1.1  

---

### **Step 5 — Check Wi‑Fi Signal Strength**
Ask user to move closer to router.

If signal improves → coverage issue.

---

### **Step 6 — Check for Interference**
Common sources:
- Microwaves  
- Baby monitors  
- Bluetooth devices  
- Neighbouring Wi‑Fi  

Switch router to a different channel if needed.

---

### **Step 7 — Check Router Firmware**
Outdated firmware causes:
- Dropouts  
- Slow speeds  
- Security issues  

Guide user to router admin page (usually):
192.168.1.1
192.168.0.1

---

### **Step 8 — Check ISP Status**
If multiple devices affected:
- Check ISP status page  
- Check local outages  
- Ask user if neighbours have issues  

---

## 🧪 6. Evidence Collection

Always gather:

- Screenshot of ipconfig  
- Ping results  
- Wi‑Fi signal strength  
- Router model  
- ISP name  
- Whether Ethernet works  
- Steps to reproduce  

Attach logs to the ticket.

---

## 🚨 7. Escalation Criteria

Escalate to 2nd Line / Network Team if:

- User cannot access router admin page  
- DHCP repeatedly fails  
- Router firmware update fails  
- VPN only works intermittently  
- Packet loss persists after router reboot  
- Suspected ISP line fault  
- Mesh system misconfiguration  

Document all steps taken before escalation.

---

## 🛡️ 8. Preventative Actions

- Restart router weekly  
- Keep firmware updated  
- Use mesh instead of extenders  
- Use Ethernet for work devices  
- Avoid overcrowded Wi‑Fi channels  
- Place router in open, central location  

---

## 📚 Related Pages

- [Networking Fundamentals](networking-fundamentals.md)  
- [Network Troubleshooting](network-troubleshooting.md)  
- [Networking Scenarios](networking-scenarios.md)

---

## ✔️ Status: Complete

This page forms part of the Networking Basics section.
