# Outlook Troubleshooting Guide

A structured troubleshooting guide for diagnosing and resolving common Outlook issues in Microsoft 365 environments.  
This document reflects real 1st Line Support workflows and ITIL‑aligned practices.

---

## 🧭 1. Initial Triage Questions

Before troubleshooting, confirm:

- Is the issue with Outlook Desktop, Outlook Web, or Mobile?
- Is the user online or offline?
- Is the issue affecting one user or multiple users?
- Has the device been restarted?
- Is the user signed into the correct Microsoft 365 account?
- Are there any recent changes (password reset, MFA change, new device)?
- Is the mailbox shared, delegated, or personal?

Document all findings in the ticket.

---

## 📌 2. Common Symptoms & Root Causes

### **Symptom: Outlook won’t open / crashes**
- Corrupted profile  
- Faulty add‑ins  
- Damaged OST file  
- Outdated Office build  

### **Symptom: Outlook stuck on “Loading Profile”**
- Damaged profile  
- Credential Manager conflict  
- Corrupted OST  

### **Symptom: Emails not sending/receiving**
- Offline mode  
- Authentication failure  
- Full mailbox  
- Server connectivity issues  

### **Symptom: Search not working**
- Search index corruption  
- OST corruption  
- Windows Search service stopped  

### **Symptom: Shared mailbox not appearing**
- Permissions not applied  
- Sync delay  
- Cached mode issues  

---

## 🛠️ 3. Step‑By‑Step Troubleshooting Workflow

### **Step 1 — Check Outlook Status**
- File → Office Account → Update Options → Update Now  
- Check Microsoft 365 Service Health (admin only)

---

### **Step 2 — Restart Outlook in Safe Mode**
Run:
outlook.exe /safe

If Outlook works in Safe Mode → an add‑in is the cause.

Disable add‑ins:
- File → Options → Add‑ins  
- Manage COM Add‑ins → Disable all  
- Re-enable one by one

---

### **Step 3 — Check Connectivity**
In Outlook:
- Bottom bar should show **Connected to: Microsoft Exchange**  
- If “Working Offline” → disable via Send/Receive tab  

Run:
Test Email AutoConfiguration (Ctrl + Right‑click Outlook icon)

Check:
- Autodiscover  
- Connectivity  
- Errors  

---

### **Step 4 — Clear Credential Manager**
Remove old Office credentials:

Control Panel → Credential Manager → Windows Credentials  
Delete:
- `MicrosoftOffice16*`  
- `Outlook*`  
- `MSOffice*`

Restart Outlook.

---

### **Step 5 — Repair Office**
Settings → Apps → Microsoft 365 → Modify → Quick Repair  
If still failing → Online Repair

---

### **Step 6 — Rebuild the OST File**
Close Outlook, then delete OST:
%localappdata%\Microsoft\Outlook\

Outlook will rebuild the file on next launch.

---

### **Step 7 — Create a New Outlook Profile**
Control Panel → Mail → Show Profiles → Add

Set new profile as default.

---

### **Step 8 — Fix Search Issues**
Run:
Control Panel → Indexing Options → Advanced → Rebuild

Ensure Windows Search service is running.

---

### **Step 9 — Check Mailbox Size**
Outlook → File → Tools → Mailbox Cleanup

If mailbox is full:
- Empty Deleted Items  
- Archive old emails  
- Move large attachments to OneDrive  

---

## 🧪 4. Evidence Collection

Always gather:

- Screenshots of error messages  
- AutoConfiguration test results  
- Outlook version/build number  
- Add‑ins list  
- OST file size  
- Event Viewer logs (Application → Outlook)  
- Steps to reproduce  

Attach logs to the ticket.

---

## 🚨 5. Escalation Criteria

Escalate to 2nd Line / Messaging Team if:

- Profile rebuild fails  
- OST rebuild fails repeatedly  
- Search index corruption persists  
- Shared mailbox permissions not applying  
- Mailbox corruption suspected  
- Autodiscover fails for multiple users  
- Exchange Online service degradation confirmed  

Document all steps taken before escalation.

---

## 🛡️ 6. Preventative Actions

- Keep Office updated  
- Avoid large OST files (>10GB)  
- Remove unnecessary add‑ins  
- Restart Outlook daily  
- Educate users on mailbox management  
- Ensure MFA and passwords are up to date  

---

## 📸 7. Screenshot Placeholders

Add screenshots here as you build evidence:

- Outlook error messages  
- AutoConfiguration results  
- Add‑ins list  
- Credential Manager  
- OST folder  
- Search indexing  

---

## 📚 8. Related Pages

- [OneDrive Sync Issues](onedrive-sync-issues.md)  
- [Teams Issues](teams-issues.md)  
- [MFA Lockouts](mfa-lockouts.md)  
- [Admin Centre Tasks](admin-centre-tasks.md)

---

## ✔️ Status: Complete

This page forms part of the M365 Support section.  
Next steps: complete the remaining M365 troubleshooting pages.

