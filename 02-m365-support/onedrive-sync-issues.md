# OneDrive Sync Issues – Troubleshooting Guide

A structured troubleshooting guide for diagnosing and resolving OneDrive for Business sync issues in Microsoft 365 environments.  
This document reflects real 1st Line Support workflows and ITIL‑aligned practices.

---

## 🧭 1. Initial Triage Questions

Before troubleshooting, confirm:

- Is the issue on Windows, macOS, or mobile?
- Is the user signed into the correct Microsoft 365 account?
- Is the issue affecting OneDrive Personal, OneDrive for Business, or SharePoint libraries?
- Is the device online?
- Are there any error icons (red X, yellow warning, blue arrows)?
- Is the issue affecting one file, one folder, or everything?
- Has the user recently changed their password or MFA method?

Document all findings in the ticket.

---

## 📌 2. Common Symptoms & Root Causes

### **Symptom: Files not syncing**
- OneDrive paused  
- User signed out  
- File path too long  
- Invalid characters in filenames  
- Storage quota exceeded  

### **Symptom: Red X on OneDrive icon**
- Authentication failure  
- Corrupted OneDrive cache  
- Missing permissions  
- File locked by another process  

### **Symptom: Blue arrows (sync pending)**
- Large files uploading  
- Network congestion  
- File in use  

### **Symptom: “Processing changes” stuck**
- Large batch of files  
- Sync loop  
- Corrupted cache  

### **Symptom: SharePoint library not syncing**
- Library not added to OneDrive  
- Permissions not applied  
- Sync client mismatch  

---

## 🛠️ 3. Step‑By‑Step Troubleshooting Workflow

### **Step 1 — Check OneDrive Status**
Right‑click OneDrive icon → Check for:

- Paused sync  
- Sign‑in required  
- Error messages  
- Storage full  

---

### **Step 2 — Restart OneDrive**
Run:
%localappdata%\Microsoft\OneDrive\OneDrive.exe /reset

Then restart OneDrive manually:
%localappdata%\Microsoft\OneDrive\OneDrive.exe

This resolves most sync issues.

---

### **Step 3 — Check File Path Length**
Windows max path limit: **260 characters**

Shorten:
- Folder names  
- File names  
- Nested directory structures  

---

### **Step 4 — Check for Invalid Characters**
OneDrive does not allow:
" * : < > ? / \ |

Rename any files containing these.

---

### **Step 5 — Check Storage Quota**
Go to:
- OneDrive Web → Settings → Storage

If full:
- Delete unused files  
- Empty recycle bin  
- Move large files to SharePoint  

---

### **Step 6 — Check Account Authentication**
If user recently changed password/MFA:

- Sign out of OneDrive  
- Sign back in  
- Restart device  

---

### **Step 7 — Check File Locks**
Files may be locked by:
- Word/Excel still open  
- Another user editing  
- Sync conflict copies  

Close all Office apps → retry sync.

---

### **Step 8 — Reconnect OneDrive**
If issues persist:

1. Unlink PC  
2. Sign back in  
3. Choose folders to sync  

---

### **Step 9 — Check SharePoint Library Sync**
For shared libraries:

- Go to SharePoint site  
- Click **Sync**  
- Ensure OneDrive client opens  
- Confirm permissions  

---

## 🧪 4. Evidence Collection

Always gather:

- Screenshot of OneDrive icon + error  
- OneDrive version number  
- File path causing issues  
- Storage quota screenshot  
- Sync status from OneDrive web  
- Steps to reproduce  

Attach logs to the ticket.

---

## 🚨 5. Escalation Criteria

Escalate to 2nd Line / M365 Team if:

- OneDrive reset fails  
- Sync loop persists  
- Permissions not applying on SharePoint  
- File corruption suspected  
- User cannot authenticate despite correct credentials  
- OneDrive client repeatedly crashes  
- Large migrations or bulk restore required  

Document all steps taken before escalation.

---

## 🛡️ 6. Preventative Actions

- Keep OneDrive client updated  
- Avoid deep folder nesting  
- Use SharePoint for large team libraries  
- Educate users on filename restrictions  
- Restart device regularly  
- Avoid storing PST files in OneDrive  

---

## 📸 7. Screenshot Placeholders

Add screenshots here as you build evidence:

- OneDrive error icons  
- Sync status  
- Storage quota  
- File path length  
- SharePoint sync button  

---

## 📚 8. Related Pages

- [Outlook Troubleshooting](outlook-troubleshooting.md)  
- [Teams Issues](teams-issues.md)  
- [MFA Lockouts](mfa-lockouts.md)  
- [Admin Centre Tasks](admin-centre-tasks.md)

---

## ✔️ Status: Complete

This page forms part of the M365 Support section.  
Next steps: complete the remaining M365 troubleshooting pages.

