# Windows 11 Troubleshooting Guide

A structured, evidence‑driven troubleshooting guide for diagnosing and resolving common Windows 11 issues.  
This document follows ITIL‑aligned practices and is designed for 1st Line Support, Service Desk, and IT Technician roles.

---

## 🧭 1. Initial Triage Checklist

Before troubleshooting any Windows 11 issue, confirm:

- Is the device powered on and responsive?
- Is the user logged in successfully?
- Is the device connected to the network (Wi-Fi/Ethernet)?
- Has the issue been reproduced?
- Has the device been restarted?
- Are there any recent changes (updates, new software, policy changes)?
- Is the issue affecting one user or multiple users?

Document all findings in the ticket.

---

## 🛠️ 2. Core Diagnostic Tools

Windows 11 provides several built‑in tools essential for first‑line troubleshooting:

### **Task Manager**
- Check CPU, RAM, Disk, and Network usage  
- Identify unresponsive applications  
- Restart Windows Explorer if UI is frozen  

### **Event Viewer**
- Application logs  
- System logs  
- Warnings, errors, critical events  

### **Settings → System → Troubleshoot**
- Windows Troubleshooters (network, audio, printer, updates)

### **PowerShell**
Useful commands:
Get-EventLog -LogName System -Newest 20
Get-Process
Get-Service
sfc /scannow
DISM /Online /Cleanup-Image /RestoreHealth


### **Reliability Monitor**
- View crashes, warnings, and software failures  
- Timeline of system stability  

---

## 🔍 3. Common Symptoms & Root Causes

### **Slow performance**
- High CPU/RAM usage  
- Startup apps  
- Corrupted system files  
- Failing disk  
- Windows updates pending  

### **Network issues**
- DNS misconfiguration  
- Wi-Fi adapter issues  
- Router/AP problems  
- VPN interference  

### **Application crashes**
- Corrupted profile  
- Add‑ins or plugins  
- Outdated software  
- Missing dependencies  

### **Windows Update failures**
- Corrupted update cache  
- Insufficient disk space  
- Stuck services  

---

## 🧩 4. Step‑By‑Step Troubleshooting Workflow

### **Step 1 — Reproduce the issue**
- Ask the user to demonstrate  
- Capture screenshots or logs  
- Note exact error messages  

### **Step 2 — Check system health**
Run:
sfc /scannow
DISM /Online /Cleanup-Image /RestoreHealth


### **Step 3 — Check updates**
- Windows Update  
- Driver updates  
- Firmware updates  

### **Step 4 — Check storage**
- Ensure >10% free space  
- Run `chkdsk /f` if disk issues suspected  

### **Step 5 — Check startup apps**
Disable unnecessary items via Task Manager → Startup Apps.

### **Step 6 — Check Event Viewer**
Look for:
- Critical errors  
- Application crashes  
- Driver failures  
- Update errors  

### **Step 7 — Reset components (if needed)**

#### **Reset Windows Update components**
net stop wuauserv
net stop bits
net stop cryptsvc
ren C:\Windows\SoftwareDistribution SoftwareDistribution.old
ren C:\Windows\System32\catroot2 catroot2.old
net start wuauserv
net start bits
net start cryptsvc


#### **Network reset**
Settings → Network & Internet → Advanced → Network Reset

---

## 🧪 5. Evidence Collection

Always gather:

- Screenshots  
- Error codes  
- Event Viewer logs  
- Steps to reproduce  
- System info (use script below)

### **System Info Script**
Get-ComputerInfo | Out-File "$env:USERPROFILE\Desktop\system-info.txt"

---

## 🚨 6. Escalation Criteria

Escalate to 2nd Line / Desktop Support if:

- Hardware failure suspected  
- OS corruption persists after SFC/DISM  
- Blue screens (BSOD) with recurring stop codes  
- Domain join / GPO issues  
- BitLocker recovery loops  
- Profile corruption that requires rebuild  
- Update failures after component reset  

Document all steps taken before escalation.

---

## 🛡️ 7. Preventative Actions

- Enable automatic updates  
- Remove unnecessary startup apps  
- Ensure antivirus is active  
- Educate users on safe browsing  
- Encourage regular restarts  
- Keep drivers updated  
- Maintain disk health  

---

## 📸 8. Screenshot Placeholders

Add screenshots here as you build evidence:

- System Info  
- Event Viewer logs  
- Update errors  
- Task Manager performance  
- Reliability Monitor  

---

## 📚 9. Related Troubleshooting Pages

- [Printer Issues](printer-issues.md)  
- [Network Dropouts](network-dropouts.md)  
- [Windows Update Failures](windows-update-failures.md)  
- [Slow Performance](slow-performance.md)

---

## ✔️ Status: Complete

This page forms the foundation of the Windows Support section.  
Next steps: complete the individual issue pages listed above.
