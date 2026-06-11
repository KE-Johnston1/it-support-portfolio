# Printer Issues – Troubleshooting Guide

A structured troubleshooting guide for resolving common printer issues in Windows 10/11 environments.  
This document follows ITIL‑aligned practices and reflects real 1st Line Support workflows.

---

## 🧭 1. Initial Triage Questions

Before troubleshooting, confirm:

- Is the printer local (USB) or networked (Wi-Fi/Ethernet)?
- Is the issue affecting one user or multiple users?
- Is the printer powered on and showing no error lights?
- Has the user tried printing from more than one application?
- Is the correct printer selected as default?
- Are there any recent changes (updates, new drivers, new device)?

Document all answers in the ticket.

---

## 🖨️ 2. Common Symptoms & Root Causes

### **Symptom: Print job stuck in queue**
- Print spooler service frozen  
- Corrupted print job  
- Printer offline  
- Driver conflict  

### **Symptom: “Printer Offline”**
- Network drop  
- Incorrect IP address  
- Printer asleep or in error state  
- User connected to wrong network  

### **Symptom: Nothing prints at all**
- Wrong default printer  
- User printing to old/decommissioned printer  
- Spooler crash  
- USB cable loose (local printers)  

### **Symptom: Slow printing**
- Large PDF or image files  
- Low memory on printer  
- Network congestion  
- Driver mismatch  

---

## 🔧 3. Step‑By‑Step Troubleshooting Workflow

### **Step 1 — Check the basics**
- Ensure printer is powered on  
- Check for paper, toner, jams  
- Confirm the user is connected to the correct network  
- Verify the correct printer is selected  

### **Step 2 — Restart the Print Spooler**
This resolves 70% of printing issues.

**Run in PowerShell (Admin):**
Stop-Service -Name spooler
Start-Service -Name spooler

Or via Services.msc:
- Find **Print Spooler**
- Right‑click → Restart

### **Step 3 — Clear the print queue**
net stop spooler
del /Q C:\Windows\System32\spool\PRINTERS\.
net start spooler

### **Step 4 — Re-add the printer**
For network printers:
1. Remove printer  
2. Run:
\\print-server-name
3. Reinstall the printer from the list  

For local printers:
- Disconnect USB  
- Reconnect  
- Allow Windows to reinstall drivers  

### **Step 5 — Check printer IP address**
On the printer display or web interface, confirm the IP matches the one in Windows:

Settings → Devices → Printers → Printer → **Printer Properties** → Ports

If mismatched → update the port or reinstall the printer.

### **Step 6 — Test printing**
- Print a test page from Windows  
- Print a configuration page from the printer  
- Try printing from another app (Word, Notepad, PDF)

---

## 🧪 4. Evidence Collection

Always gather:

- Screenshot of print queue  
- Error messages  
- Printer status page  
- Event Viewer logs (if spooler crashes)  
- Steps taken  
- Whether the issue is user‑specific or system‑wide  

---

## 🚨 5. Escalation Criteria

Escalate to 2nd Line / Desktop Support if:

- Printer hardware faults (rollers, fuser, paper feed)  
- Repeated spooler crashes  
- Network printer unreachable from multiple devices  
- Print server issues  
- Driver package corruption  
- Printer requires firmware update  
- Permissions issues on print server  

Document all troubleshooting steps before escalation.

---

## 🛡️ 6. Preventative Actions

- Educate users to avoid printing huge PDFs without optimisation  
- Keep printer drivers updated  
- Ensure printers have static IPs  
- Restart printers weekly  
- Maintain adequate toner and paper  
- Keep print server patched  

---

## 📸 7. Screenshot Placeholders

Add screenshots here as you build evidence:

- Print queue  
- Printer offline message  
- Spooler restart  
- Printer properties (ports tab)  
- Test page results  

---

## 📚 8. Related Pages

- [Network Dropouts](network-dropouts.md)  
- [Windows Update Failures](windows-update-failures.md)  
- [Slow Performance](slow-performance.md)

---

## ✔️ Status: Complete

This page forms part of the Windows Support section.  
Next steps: complete the remaining Windows troubleshooting pages.

