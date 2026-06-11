# Slow Performance – Troubleshooting Guide

A structured troubleshooting guide for diagnosing and resolving slow performance issues in Windows 10/11 environments.  
This document reflects real 1st Line Support workflows and ITIL‑aligned practices.

---

## 🧭 1. Initial Triage Questions

Before troubleshooting, confirm:

- When did the slowness start?
- Is the issue constant or intermittent?
- Does it affect all applications or specific ones?
- Is the device connected to Wi‑Fi, Ethernet, or VPN?
- Has the device been restarted recently?
- Are other users experiencing similar issues?
- Has the user installed new software recently?

Document all findings in the ticket.

---

## 🐢 2. Common Symptoms & Root Causes

### **Symptom: System slow to boot**
- Too many startup apps  
- Corrupted system files  
- Failing disk  
- Windows updates pending  

### **Symptom: Applications slow or freezing**
- High CPU/RAM usage  
- Background processes  
- Outdated software  
- Profile corruption  

### **Symptom: Slow internet performance**
- Weak Wi‑Fi signal  
- DNS issues  
- VPN overhead  
- Browser extensions  

### **Symptom: System lag during multitasking**
- Insufficient RAM  
- Heavy background tasks  
- Malware or unwanted software  

---

## 🛠️ 3. Step‑By‑Step Troubleshooting Workflow

### **Step 1 — Check Task Manager**
Open Task Manager → Performance & Processes.

Look for:
- CPU consistently above 80%  
- RAM above 80%  
- Disk usage stuck at 100%  
- Suspicious background processes  

If Windows Explorer is frozen:
- Right‑click → Restart

---

### **Step 2 — Disable unnecessary startup apps**
Task Manager → Startup Apps → Disable:

- Teams auto‑start  
- OneDrive (if not required)  
- Adobe Updater  
- Spotify  
- Any non‑essential apps  

---

### **Step 3 — Check for Windows Updates**
Pending updates can cause slowness.

Install updates → Restart → Re-test.

---

### **Step 4 — Run SFC and DISM**
Repair corrupted system files.
sfc /scannow
DISM /Online /Cleanup-Image /RestoreHealth

Restart afterwards.

---

### **Step 5 — Check disk health**
Run:
chkdsk /f

Or check SMART status using:
wmic diskdrive get status

If disk shows “Caution” or “Bad” → escalate for hardware replacement.

---

### **Step 6 — Clear temporary files**
Run:
cleanmgr

Or manually clear:
- %temp%  
- C:\Windows\Temp  

---

### **Step 7 — Check for malware**
Run:
- Windows Security → Full Scan  
- Defender Offline Scan (if needed)  

---

### **Step 8 — Check network performance**
Run:
ping 8.8.8.8 -n 20

If high latency → investigate Wi‑Fi, VPN, or DNS.

---

### **Step 9 — Check browser performance**
Actions:
- Disable extensions  
- Clear cache  
- Test in another browser  

---

## 🧪 4. Evidence Collection

Always gather:

- Task Manager screenshots  
- Startup apps list  
- SFC/DISM output  
- Disk health results  
- Ping results  
- Steps to reproduce  
- Whether issue is user‑specific or system‑wide  

Attach logs to the ticket.

---

## 🚨 5. Escalation Criteria

Escalate to 2nd Line / Desktop Support if:

- Disk health warnings (SMART errors)  
- Repeated high disk usage from system processes  
- OS corruption persists after SFC/DISM  
- Suspected malware infection  
- Profile corruption requiring rebuild  
- Hardware upgrade required (RAM/SSD)  
- Device overheating or thermal throttling  

Document all steps taken before escalation.

---

## 🛡️ 6. Preventative Actions

- Restart devices weekly  
- Keep Windows updated  
- Limit startup apps  
- Use SSDs instead of HDDs  
- Keep browsers clean  
- Educate users on safe downloads  
- Ensure antivirus is active and updated  

---

## 📸 7. Screenshot Placeholders

Add screenshots here as you build evidence:

- Task Manager  
- Startup apps  
- Disk usage  
- SFC/DISM results  
- Ping results  

---

## 📚 8. Related Pages

- [Network Dropouts](network-dropouts.md)  
- [Printer Issues](printer-issues.md)  
- [Windows Update Failures](windows-update-failures.md)

---

## ✔️ Status: Complete

This page forms part of the Windows Support section.  
Next steps: add scripts to the `scripts/` folder.
