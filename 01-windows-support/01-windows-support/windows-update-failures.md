# Windows Update Failures – Troubleshooting Guide

A structured troubleshooting guide for diagnosing and resolving Windows 10/11 update failures.  
This document follows ITIL‑aligned practices and reflects real 1st Line Support workflows.

---

## 🧭 1. Initial Triage Questions

Before troubleshooting, confirm:

- Is the device connected to the internet?
- Is the user on Wi‑Fi, Ethernet, or VPN?
- Has the device been restarted recently?
- Is there enough free disk space (minimum 10GB recommended)?
- Are updates failing with a specific error code?
- Is the issue affecting one user or multiple users?

Document all findings in the ticket.

---

## ⚠️ 2. Common Symptoms & Root Causes

### **Symptom: Updates stuck at a percentage**
- Corrupted update cache  
- Windows Update service hung  
- Slow connection  
- Background processes interfering  

### **Symptom: Error codes (0x80070002, 0x800f081f, 0x8024a105, etc.)**
- Missing system files  
- Damaged update components  
- Driver conflicts  
- Incomplete previous updates  

### **Symptom: “We couldn’t complete the updates”**
- Failed rollback  
- Pending reboot  
- Insufficient disk space  
- Corrupted OS components  

### **Symptom: Device restarts repeatedly**
- Update loop  
- Driver/firmware conflict  
- Failed cumulative update  

---

## 🛠️ 3. Step‑By‑Step Troubleshooting Workflow

### **Step 1 — Restart the device**
Many update failures resolve after a clean reboot.

---

### **Step 2 — Run Windows Update Troubleshooter**
Settings → System → Troubleshoot → Other troubleshooters → Windows Update → Run

---

### **Step 3 — Check disk space**
Ensure at least **10GB free**.

If low:
- Clear temp files  
- Empty recycle bin  
- Remove old Windows installations (`cleanmgr /sageset:1`)  

---

### **Step 4 — Run SFC and DISM**
These commands repair corrupted system files.

**Run in PowerShell (Admin):**
sfc /scannow
DISM /Online /Cleanup-Image /RestoreHealth

Restart afterwards.

---

### **Step 5 — Reset Windows Update components**
This resolves most update errors.
net stop wuauserv
net stop bits
net stop cryptsvc
ren C:\Windows\SoftwareDistribution SoftwareDistribution.old
ren C:\Windows\System32\catroot2 catroot2.old
net start wuauserv
net start bits
net start cryptsvc

Restart the device and try updates again.

---

### **Step 6 — Check Event Viewer**
Look under:

- **System**  
- **Setup**  
- **WindowsUpdateClient**  

Look for:
- Error codes  
- Failed installations  
- Service failures  

---

### **Step 7 — Install updates manually**
Go to:

https://www.catalog.update.microsoft.com

Search for the KB number and download the standalone installer.

---

### **Step 8 — Check for driver or firmware conflicts**
- Update drivers via Windows Update  
- Update BIOS/UEFI if needed  
- Remove problematic drivers  

---

### **Step 9 — Perform an in‑place upgrade repair (if needed)**
This keeps files and apps but repairs Windows.

Use the Windows 11 Installation Assistant or ISO.

---

## 🧪 4. Evidence Collection

Always gather:

- Error codes  
- Screenshots of Windows Update  
- Event Viewer logs  
- SFC/DISM output  
- Free disk space  
- Steps to reproduce  

Attach logs to the ticket.

---

## 🚨 5. Escalation Criteria

Escalate to 2nd Line / Desktop Support if:

- Updates fail after SFC + DISM + component reset  
- BSOD occurs during update  
- Device stuck in update loop  
- Update requires registry repair  
- Firmware/BIOS update required  
- Domain GPO conflicts suspected  
- Multiple users affected (possible WSUS issue)  

Document all steps taken before escalation.

---

## 🛡️ 6. Preventative Actions

- Keep drivers updated  
- Ensure devices restart weekly  
- Maintain adequate disk space  
- Avoid shutting down during updates  
- Keep antivirus definitions current  
- Educate users on update prompts  

---

## 📸 7. Screenshot Placeholders

Add screenshots here as you build evidence:

- Windows Update error  
- Event Viewer logs  
- SFC/DISM results  
- SoftwareDistribution folder  
- Update history  

---

## 📚 8. Related Pages

- [Network Dropouts](network-dropouts.md)  
- [Printer Issues](printer-issues.md)  
- [Slow Performance](slow-performance.md)

---

## ✔️ Status: Complete

This page forms part of the Windows Support section.  
Next steps: complete the remaining Windows troubleshooting pages.



