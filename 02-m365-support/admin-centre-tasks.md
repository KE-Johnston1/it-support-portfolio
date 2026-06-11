# Microsoft 365 Admin Centre – Core Tasks Guide

A structured guide covering the most common administrative tasks performed in the Microsoft 365 Admin Centre.  
This document reflects real 1st Line Support workflows and ITIL‑aligned practices.

---

## 🧭 1. Initial Access Requirements

Before performing any admin tasks, confirm:

- You have the correct admin role (Helpdesk Admin, User Admin, or Global Reader)
- You are signed into the correct tenant
- You have verified the user’s identity according to organisational policy
- You understand the scope of the request (reset, unlock, license change, mailbox access, etc.)

---

## 👤 2. User Account Management

### **Reset a User’s Password**
1. Admin Centre → Users → Active Users  
2. Select the user  
3. Click **Reset Password**  
4. Choose:
   - Auto‑generate password  
   - Or create a temporary password  
5. Ensure “Require this user to change their password” is enabled  
6. Provide password securely according to policy  

---

### **Unlock a User Account**
1. Admin Centre → Users → Active Users  
2. Select the user  
3. If account is locked → click **Unblock sign‑in**  
4. Review sign‑in logs if repeated lockouts occur  

---

### **Force Sign‑Out**
Useful after password resets or suspected compromise.

1. Admin Centre → Users → Active Users  
2. Select user  
3. Click **Sign‑out**  
4. User will be forced to re‑authenticate  

---

### **Update User Details**
- Job title  
- Department  
- Manager  
- Contact details  
- Office location  

Admin Centre → Users → Active Users → Select user → **Manage contact information**

---

## 🔐 3. MFA & Authentication Tasks

### **Reset MFA Methods**
1. Admin Centre → Users → Active Users  
2. Select user  
3. Authentication Methods → **Delete** existing methods  
4. User will be prompted to re‑register MFA at next login  

---

### **Check Sign‑In Logs**
Azure AD → Sign‑in Logs  
Look for:
- Failure reasons  
- MFA prompts  
- Conditional Access blocks  
- Risky sign‑ins  

Attach logs to the ticket.

---

## 🎫 4. Licensing Tasks

### **Assign or Remove Licenses**
1. Admin Centre → Users → Active Users  
2. Select user  
3. Licenses & Apps  
4. Toggle:
   - Microsoft 365 Business Standard  
   - Exchange Online  
   - Teams  
   - SharePoint  
   - OneDrive  
5. Save changes  

---

### **Check License Availability**
Admin Centre → Billing → Licenses  
Shows:
- Total licenses  
- Assigned  
- Available  
- Expired  

---

## 📧 5. Exchange & Mailbox Tasks

### **Convert a Mailbox to Shared**
1. Admin Centre → Users → Active Users  
2. Select user  
3. Click **Convert to Shared Mailbox**  
4. Remove license if no longer needed  

---

### **Grant Mailbox Permissions**
Exchange Admin Centre → Recipients → Mailboxes → Select mailbox → **Mailbox Delegation**

Permissions:
- **Full Access** – open mailbox  
- **Send As** – send as the mailbox  
- **Send on Behalf** – send on behalf  

---

### **Set Out‑of‑Office for a User**
Exchange Admin Centre → Mailboxes → Select user → **Automatic Replies**

---

### **Increase Mailbox Size (if allowed)**
Exchange Admin Centre → Mailboxes → Settings → Storage  
Adjust quota (if policy allows).

---

## 🗂️ 6. SharePoint & OneDrive Tasks

### **Restore Deleted Files**
OneDrive Admin → User’s OneDrive → **Restore**  
Or SharePoint → Recycle Bin → Restore

---

### **Grant Access to a SharePoint Site**
SharePoint Admin → Sites → Active Sites → Select site → Permissions

---

### **Stop Syncing a Library**
Guide user to:
- OneDrive icon → Settings → Account → Stop Sync  

---

## 📞 7. Teams & Communication Tasks

### **Check Teams Policies**
Teams Admin Centre → Users → Select user → Policies  
Check:
- Meeting policy  
- Messaging policy  
- App permissions  
- Calling policy  

---

### **Reset Teams Client (User-Level)**
Guide user to:
%appdata%\Microsoft\Teams
Delete cache folders.

---

## 🧪 8. Evidence Collection

Always gather:

- Screenshot of admin action  
- User’s license status  
- Sign‑in logs (if relevant)  
- Error messages  
- Permissions before/after  
- Confirmation of identity verification  

Attach logs to the ticket.

---

## 🚨 9. Escalation Criteria

Escalate to 2nd Line / M365 Team if:

- Conditional Access policy involvement  
- Mailbox corruption suspected  
- License assignment errors  
- Admin roles need modification  
- Security alerts triggered  
- Multi‑user impact  
- Compliance or retention policy issues  

Document all steps taken before escalation.

---

## 🛡️ 10. Preventative Actions

- Keep user details up to date  
- Remove unused licenses  
- Regularly review sign‑in logs  
- Educate users on MFA backup methods  
- Monitor service health dashboard  
- Maintain least‑privilege access  

---

## 📚 11. Related Pages

- [Outlook Troubleshooting](outlook-troubleshooting.md)  
- [OneDrive Sync Issues](onedrive-sync-issues.md)  
- [Teams Issues](teams-issues.md)  
- [MFA Lockouts](mfa-lockouts.md)

---

## ✔️ Status: Complete

This page forms part of the M365 Support section.  
Next steps: review, polish, and prepare for portfolio publishing.
