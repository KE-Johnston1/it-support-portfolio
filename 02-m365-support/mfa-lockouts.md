# MFA Lockouts – Troubleshooting Guide

A structured troubleshooting guide for diagnosing and resolving Multi‑Factor Authentication (MFA) lockouts in Microsoft 365 environments.  
This document reflects real 1st Line Support workflows and ITIL‑aligned practices.

---

## 🧭 1. Initial Triage Questions

Before troubleshooting, confirm:

- What device is the user trying to authenticate with?
- Which MFA method are they using?  
  (Authenticator app, SMS, phone call, hardware token)
- Has the user recently changed their phone, SIM, or number?
- Has the user recently reset their password?
- Is the user able to access any other Microsoft 365 apps?
- Is the issue affecting one user or multiple users?
- Is the user on VPN or a corporate network?

Document all findings in the ticket.

---

## 📌 2. Common Symptoms & Root Causes

### **Symptom: User cannot receive MFA prompts**
- Authenticator app not installed  
- Push notifications disabled  
- Device offline  
- New phone without MFA re‑registration  
- SIM card changed  

### **Symptom: “Approve sign‑in request” never appears**
- Notification permissions disabled  
- App not running in background  
- Token corruption  
- Network restrictions  

### **Symptom: SMS codes not arriving**
- Carrier delay  
- Wrong phone number  
- International SMS blocked  
- User roaming  

### **Symptom: User locked out after password reset**
- MFA methods not re‑verified  
- Old device still registered  
- Conditional Access policy blocking login  

### **Symptom: “Your sign‑in was blocked”**
- Risky sign‑in detected  
- Location or device flagged  
- Conditional Access enforcement  

---

## 🛠️ 3. Step‑By‑Step Troubleshooting Workflow

### **Step 1 — Confirm the user’s identity**
Follow organisation policy:
- Security questions  
- Manager approval  
- Ticket verification  
- HR-approved identity checks  

Never bypass MFA without proper verification.

---

### **Step 2 — Check the user’s MFA methods**
Ask the user:
- Do you still have access to your old phone?  
- Do you have backup methods (SMS, alternate number)?  
- Are you using the Microsoft Authenticator app?

If they have *any* working method → guide them through login.

---

### **Step 3 — Check Authenticator App Issues**
Ask the user to:

1. Open the Microsoft Authenticator app  
2. Check if the account is listed  
3. Ensure notifications are enabled  
4. Ensure the device has internet access  
5. Restart the phone  

If the account is missing → MFA re‑registration required.

---

### **Step 4 — Check Notification Settings**
On mobile device:

- Notifications → Allow for Authenticator  
- Background app refresh ON  
- Battery optimisation OFF  
- Airplane mode OFF  

---

### **Step 5 — Use SMS or Phone Call as Backup**
If push notifications fail:
- Select “Use a different verification option”  
- Choose SMS or phone call  

If SMS doesn’t arrive:
- Confirm number in Azure AD  
- Check if user is roaming  
- Ask them to toggle airplane mode  

---

### **Step 6 — Admin Reset of MFA (Helpdesk Role)**
If user cannot authenticate at all:

Admin Centre → Users → Select User → **Authentication Methods**  
Actions:
- Delete existing MFA methods  
- Add new phone number (if policy allows)  
- Force re‑registration at next login  

User will be prompted to set up MFA again.

---

### **Step 7 — Check Conditional Access Policies**
If user receives “Sign‑in blocked”:

- Location restrictions  
- Device compliance requirements  
- Risky sign‑in flagged  

Escalate to Security/M365 team if CA policy involvement suspected.

---

### **Step 8 — Check Sign‑In Logs (Admin)**
Azure AD → Sign‑in logs  
Look for:
- Failure reasons  
- Blocked sign‑ins  
- Risk detections  
- MFA requirement failures  

Attach logs to the ticket.

---

## 🧪 4. Evidence Collection

Always gather:

- Screenshot of MFA error  
- User’s registered MFA methods  
- Sign‑in logs (if admin)  
- Device type and OS version  
- Whether user recently changed phone/SIM  
- Steps to reproduce  

Attach logs to the ticket.

---

## 🚨 5. Escalation Criteria

Escalate to 2nd Line / Security Team if:

- Conditional Access policy blocking login  
- Risky sign‑in detected  
- User requires MFA exemption (temporary)  
- MFA methods cannot be reset due to policy  
- Hardware token issues  
- Authentication loops persist after reset  

Document all steps taken before escalation.

---

## 🛡️ 6. Preventative Actions

- Encourage users to add **multiple MFA methods**  
- Add backup phone number  
- Enable Authenticator app cloud backup  
- Re‑register MFA after phone upgrade  
- Keep Authenticator app updated  
- Educate users on avoiding SIM swap scams  

---

## 📸 7. Screenshot Placeholders

Add screenshots here as you build evidence:

- MFA error messages  
- Authenticator app  
- Notification settings  
- Azure AD sign‑in logs  
- Authentication methods page  

---

## 📚 8. Related Pages

- [Outlook Troubleshooting](outlook-troubleshooting.md)  
- [OneDrive Sync Issues](onedrive-sync-issues.md)  
- [Teams Issues](teams-issues.md)  
- [Admin Centre Tasks](admin-centre-tasks.md)

---

## ✔️ Status: Complete

This page forms part of the M365 Support section.  
Next steps: complete the remaining M365 troubleshooting pages.

