# Teams Issues – Troubleshooting Guide

A structured troubleshooting guide for diagnosing and resolving Microsoft Teams issues in Microsoft 365 environments.  
This document reflects real 1st Line Support workflows and ITIL‑aligned practices.

---

## 🧭 1. Initial Triage Questions

Before troubleshooting, confirm:

- Is the issue with Teams Desktop, Teams Web, or Mobile?
- Is the user signed into the correct Microsoft 365 account?
- Is the issue affecting calls, meetings, chat, or sign‑in?
- Is the user on VPN, Wi‑Fi, or Ethernet?
- Has the device been restarted?
- Are other apps experiencing issues (Outlook, OneDrive)?
- Is the issue affecting one user or multiple users?

Document all findings in the ticket.

---

## 📌 2. Common Symptoms & Root Causes

### **Symptom: Teams won’t open / crashes**
- Corrupted Teams cache  
- Outdated Teams client  
- Damaged local app data  

### **Symptom: User cannot sign in**
- Incorrect credentials  
- MFA failure  
- Token corruption  
- Network restrictions  

### **Symptom: No audio / no microphone**
- Wrong device selected  
- Windows privacy settings blocking mic  
- Audio drivers outdated  
- Teams permissions not granted  

### **Symptom: Camera not working**
- Camera in use by another app  
- Privacy settings blocking camera  
- Driver issues  

### **Symptom: Messages not sending / delayed**
- Poor network connection  
- VPN interference  
- Teams service degradation  

### **Symptom: Meetings not loading**
- Calendar sync issues  
- Teams/Outlook integration broken  
- Cached credentials  

---

## 🛠️ 3. Step‑By‑Step Troubleshooting Workflow

### **Step 1 — Check Teams Service Health**
Admin Centre → Health → Service Health  
Look for Teams outages.

If outage confirmed → inform user and update ticket.

---

### **Step 2 — Restart Teams Completely**
Teams stays running in the background.

Close it fully:
- Right‑click Teams icon → Quit  
- Or end task in Task Manager  

---

### **Step 3 — Clear Teams Cache**
This resolves 70% of Teams issues.

Close Teams, then run:
%appdata%\Microsoft\Teams

Delete everything in these folders:

- `Cache`
- `databases`
- `GPUCache`
- `IndexedDB`
- `Local Storage`
- `tmp`

Restart Teams.

---

### **Step 4 — Check Audio/Video Devices**
Teams → Settings → Devices

Verify:
- Correct microphone  
- Correct speaker  
- Correct camera  
- Volume levels  
- Noise suppression  

If devices missing → update drivers.

---

### **Step 5 — Check Windows Privacy Settings**
Settings → Privacy & Security → Microphone/Camera

Ensure:
- Access is ON  
- Teams is allowed  

---

### **Step 6 — Sign Out and Back In**
Teams → Profile → Sign out  
Restart Teams → Sign in again

This refreshes authentication tokens.

---

### **Step 7 — Repair Teams (New Teams)**
Settings → Apps → Installed Apps → Microsoft Teams → Advanced Options → Repair

If still failing → Reset.

---

### **Step 8 — Test Teams Web**
Go to:
https://teams.microsoft.com

If Teams Web works but Desktop doesn’t → local client issue.

---

### **Step 9 — Check Calendar Integration**
If meetings missing:

- Restart Outlook  
- Ensure Teams add‑in is enabled  
- Check user mailbox license  
- Check Teams/Exchange connectivity  

---

## 🧪 4. Evidence Collection

Always gather:

- Screenshots of error messages  
- Teams version number  
- Device settings (audio/video)  
- Cache folder before/after  
- Sign‑in logs  
- Network test results (speed test, ping)  
- Steps to reproduce  

Attach logs to the ticket.

---

## 🚨 5. Escalation Criteria

Escalate to 2nd Line / M365 Team if:

- Teams crashes after cache reset  
- Authentication fails despite correct credentials  
- Calendar integration broken for multiple users  
- Camera/microphone not detected after driver reinstall  
- Teams service degradation confirmed  
- User requires policy changes (meeting, calling, compliance)  
- Teams Phone / PSTN issues  

Document all steps taken before escalation.

---

## 🛡️ 6. Preventative Actions

- Keep Teams updated  
- Restart device daily  
- Avoid running Teams on VPN unless required  
- Use wired headsets for best audio quality  
- Keep Windows and drivers updated  
- Educate users on closing Teams properly  

---

## 📸 7. Screenshot Placeholders

Add screenshots here as you build evidence:

- Teams error messages  
- Device settings  
- Privacy settings  
- Cache folder  
- Calendar integration  
- Teams Web test  

---

## 📚 8. Related Pages

- [Outlook Troubleshooting](outlook-troubleshooting.md)  
- [OneDrive Sync Issues](onedrive-sync-issues.md)  
- [MFA Lockouts](mfa-lockouts.md)  
- [Admin Centre Tasks](admin-centre-tasks.md)

---

## ✔️ Status: Complete

This page forms part of the M365 Support section.  
Next steps: complete the remaining M365 troubleshooting pages.

