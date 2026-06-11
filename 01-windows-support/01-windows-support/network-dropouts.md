# Network Dropouts – Troubleshooting Guide

A structured troubleshooting guide for diagnosing and resolving intermittent or complete network connectivity issues in Windows 10/11 environments.  
This document reflects real 1st Line Support workflows and ITIL‑aligned practices.

---

## 🧭 1. Initial Triage Questions

Before troubleshooting, confirm:

- Is the issue affecting Wi‑Fi, Ethernet, or both?
- Is the issue intermittent or constant?
- Is the user the only one affected?
- Are they working onsite, at home, or remote?
- Are they using VPN?
- Has anything changed recently (updates, new router, new device)?
- Does the issue occur on other devices?

Document all answers in the ticket.

---

## 🌐 2. Common Symptoms & Root Causes

### **Symptom: Wi‑Fi disconnects randomly**
- Weak signal  
- Interference (microwaves, cordless phones, thick walls)  
- Power‑saving settings disabling the adapter  
- Outdated Wi‑Fi drivers  
- Router/AP issues  

### **Symptom: Ethernet drops intermittently**
- Faulty cable  
- Loose connection  
- Switch port issues  
- NIC driver problems  

### **Symptom: “No Internet” but connected**
- DNS failure  
- Gateway unreachable  
- VPN interference  
- ISP outage  

### **Symptom: Slow or unstable connection**
- High network utilisation  
- Background updates  
- Congested Wi‑Fi channel  
- QoS throttling  

---

## 🛠️ 3. Step‑By‑Step Troubleshooting Workflow

### **Step 1 — Confirm basic connectivity**
Run:
ipconfig
Check:
- IPv4 address  
- Default gateway  
- DNS servers  

If IP starts with **169.254.x.x**, DHCP has failed.

---

### **Step 2 — Restart network adapter**
PowerShell:
ipconfig /flushdns
ipconfig /release
ipconfig /renew
netsh winsock reset
netsh int ip reset

Restart the device afterwards.

---

### **Step 4 — Check Wi‑Fi signal strength**
Run:
netsh wlan show interfaces

Look for:
- Signal > 70% (good)  
- Signal < 40% (poor — likely dropouts)

If weak → move closer to router/AP or switch to Ethernet.

---

### **Step 5 — Check for VPN interference**
VPNs commonly cause:
- DNS override  
- Split‑tunnel issues  
- Packet loss  

Actions:
- Disconnect VPN  
- Test connection  
- If stable → escalate to network/security team  

---

### **Step 6 — Update or reinstall network drivers**
Device Manager → Network Adapters → Right‑click → Update Driver

If issues persist:
- Uninstall device  
- Restart PC  
- Allow Windows to reinstall drivers  

---

### **Step 7 — Router/AP checks (home users)**
Ask user to:
- Restart router  
- Check for ISP outages  
- Test another device  
- Try Ethernet if possible  

---

### **Step 8 — Test connectivity**
Run:
ping 8.8.8.8 -n 20
ping google.com -n 20
tracert google.com

Interpretation:
- Ping to IP fails → network issue  
- Ping to domain fails but IP works → DNS issue  
- High latency → congestion or Wi‑Fi interference  

---

## 🧪 4. Evidence Collection

Always gather:

- Screenshot of `ipconfig`  
- Ping results  
- Signal strength output  
- Event Viewer logs (NetworkProfile, WLAN-AutoConfig)  
- Steps to reproduce  
- Whether issue affects multiple users  

---

## 🚨 5. Escalation Criteria

Escalate to 2nd Line / Network Team if:

- Multiple users affected  
- Switch port suspected faulty  
- VLAN misconfiguration  
- DHCP server issues  
- DNS server unreachable  
- Corporate VPN repeatedly disconnects  
- AP controller logs show repeated drops  
- User requires new NIC or hardware replacement  

Document all troubleshooting steps before escalation.

---

## 🛡️ 6. Preventative Actions

- Keep NIC drivers updated  
- Use 5GHz Wi‑Fi where possible  
- Avoid congested Wi‑Fi channels  
- Encourage users to restart routers weekly  
- Ensure devices are not placed behind thick walls or metal cabinets  
- Disable power‑saving mode on network adapters  

---

## 📸 7. Screenshot Placeholders

Add screenshots here as you build evidence:

- ipconfig output  
- Ping results  
- Wi‑Fi signal strength  
- Network adapter settings  
- VPN connection status  

---

## 📚 8. Related Pages

- [Printer Issues](printer-issues.md)  
- [Windows Update Failures](windows-update-failures.md)  
- [Slow Performance](slow-performance.md)

---

## ✔️ Status: Complete

This page forms part of the Windows Support section.  
Next steps: complete the remaining Windows troubleshooting pages.
