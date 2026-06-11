# Entra Troubleshooting Guide

A practical guide for diagnosing and resolving identity issues in Microsoft Entra ID (Azure AD).  
This document reflects real IT Support workflows and identity troubleshooting practices.

---

## 🧭 1. Initial Triage Questions

Before troubleshooting, confirm:

- What is the user trying to access? (Teams, Outlook, SharePoint, VPN, etc.)
- What device are they using? (Windows, macOS, mobile)
- Is the issue authentication (sign‑in) or authorization (access denied)?
- Has the user recently:
  - Changed password?
  - Changed phone/SIM?
  - Been offboarded/re‑hired?
  - Been added/removed from groups?
- Is the issue affecting one user or multiple users?
- Is the user hybrid AD or cloud‑only?

Document all findings in the ticket.

---

## 🔐 2. Common Identity Symptoms & Root Causes

### **Symptom: User cannot sign in**
- Incorrect password  
- MFA failure  
- Conditional Access block  
- Token corruption  
- Disabled account  
- Password hash sync failure (hybrid)  

### **Symptom: “Your sign‑in was blocked”**
- Risky sign‑in detected  
- Location restriction  
- Device non‑compliant  
- Legacy authentication blocked  

### **Symptom: MFA not prompting**
- Notification settings disabled  
- Authenticator app not registered  
- Token out of sync  
- CA policy not requiring MFA  

### **Symptom: Access denied to app**
- Missing group membership  
- License not assigned  
- Conditional Access restrictions  
- App disabled in tenant  

### **Symptom: Sign‑in loop**
- Corrupted tokens  
- Browser cache issue  
- Conditional Access misconfiguration  

---

## 🛠️ 3. Step‑By‑Step Troubleshooting Workflow

### **Step 1 — Check User Account Status**
Admin Centre → Users → Active Users

Verify:
- Account enabled  
- Correct UPN  
- License assigned  
- Groups applied  
- Sign‑in allowed  

---

### **Step 2 — Check Sign‑In Logs**
Azure Portal → Entra ID → Sign‑in Logs

Look for:
- Failure reason  
- Conditional Access applied  
- MFA requirement  
- Risk detections  
- Device info  
- Location  

Common failure reasons:
- “User password expired”  
- “MFA required”  
- “Conditional Access policy blocked access”  
- “Device not compliant”  

---

### **Step 3 — Reset MFA (If Required)**
Admin Centre → User → Authentication Methods

Actions:
- Delete existing methods  
- Add new phone number (if policy allows)  
- Force re‑registration  

User will be prompted to set up MFA again.

---

### **Step 4 — Check Conditional Access Policies**
Azure Portal → Entra ID → Conditional Access

Check if user is affected by:
- Location restrictions  
- Device compliance requirements  
- App‑based restrictions  
- MFA enforcement  
- Legacy auth blocks  

If CA is blocking → escalate to security team.

---

### **Step 5 — Check Group Membership**
Admin Centre → User → Groups

Groups control:
- App access  
- SharePoint permissions  
- Teams membership  
- Licensing (via group‑based licensing)  

If user missing group → add and wait for sync.

---

### **Step 6 — Check Licensing**
Admin Centre → User → Licenses & Apps

Verify:
- Microsoft 365 license assigned  
- Apps enabled (Teams, SharePoint, Exchange)  
- No conflicting licenses  

If license missing → assign and wait 5–10 minutes.

---

### **Step 7 — Token & Cache Reset**
If user stuck in sign‑in loop:

#### **Windows**
1. Sign out of all Office apps  
2. Clear cached credentials:
control keymgr.dll
3. Clear browser cache  
4. Restart device  

#### **Mobile**
- Remove and re‑add account  
- Reinstall Authenticator app  

---

### **Step 8 — Hybrid Identity Checks (If Applicable)**

#### **Check Sync Status**
Azure AD Connect → Synchronization Service

Look for:
- Password hash sync failures  
- Stale connectors  
- Sync errors  

#### **Check On‑Prem AD**
- Account not disabled  
- Password not expired  
- UPN correct  
- Group membership correct  

If sync broken → escalate to identity team.

---

## 🧪 4. Evidence Collection

Always gather:

- Screenshot of error  
- Sign‑in log entry  
- User’s group membership  
- License status  
- MFA methods  
- Conditional Access policy applied  
- Device info (OS, browser, compliance)  
- Steps to reproduce  

Attach logs to the ticket.

---

## 🚨 5. Escalation Criteria

Escalate to Identity/Security Team if:

- Conditional Access policy causing block  
- Risky sign‑in detected  
- MFA cannot be reset due to policy  
- Token issues persist after reset  
- Hybrid sync failures  
- Service degradation in Entra ID  
- Admin role assignment required  
- Guest access issues involving external tenants  

Document all steps taken before escalation.

---

## 🛡️ 6. Preventative Actions

- Encourage users to add multiple MFA methods  
- Enable Authenticator cloud backup  
- Keep device OS updated  
- Use supported browsers  
- Avoid password reuse  
- Regularly review group memberships  
- Monitor sign‑in logs for anomalies  

---

## 📚 Related Pages

- [Identity Basics](identity-basics.md)  
- [Access Requests](access-requests.md)  
- [Identity Scenarios](identity-scenarios.md)

---

## ✔️ Status: Complete

This page forms part of the Identity & Access section.

