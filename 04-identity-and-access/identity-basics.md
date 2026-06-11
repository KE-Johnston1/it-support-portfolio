# Identity Basics

A clear, practical guide to understanding Identity & Access Management (IAM) in Microsoft 365 and Microsoft Entra ID.  
This document explains identity concepts in simple terms with real‑world examples relevant to IT Support.

---

## 🔐 1. What Is Identity?

**Identity** is how a system knows *who you are*.

In Microsoft 365, your identity is your **Entra ID account** (formerly Azure AD):
user@company.com

Identity determines:

- Who you are  
- What you can access  
- What you’re allowed to do  
- How you authenticate  

Identity is the foundation of modern security.

---

## 🆔 2. Microsoft Entra ID (Azure AD)

Microsoft Entra ID is Microsoft’s cloud identity platform.

It provides:

- User accounts  
- Groups  
- Authentication (password, MFA, SSO)  
- Authorization (roles, permissions)  
- Conditional Access  
- Device registration  
- Identity protection  

Entra ID is the **control plane** for Microsoft 365.

---

## 🔑 3. Authentication vs Authorization

### **Authentication = Proving who you are**
Examples:
- Password  
- MFA  
- Authenticator app  
- Biometrics  

### **Authorization = What you’re allowed to do**
Examples:
- Access SharePoint  
- Open a shared mailbox  
- Reset passwords  
- Admin roles  

**AuthN = Who are you?**  
**AuthZ = What can you do?**

---

## 🔁 4. The Identity Lifecycle

Identity follows a predictable lifecycle:

1. **Provisioning**  
   - Account created  
   - License assigned  
   - Groups added  

2. **Active Use**  
   - Daily authentication  
   - Access to apps  
   - MFA prompts  

3. **Role Changes**  
   - New permissions  
   - Group changes  
   - Access reviews  

4. **Offboarding**  
   - Disable account  
   - Remove licenses  
   - Archive mailbox  
   - Revoke sessions  

Understanding this lifecycle is essential for IT support.

---

## 🔐 5. MFA (Multi‑Factor Authentication)

MFA adds a second layer of security.

Common methods:

- Microsoft Authenticator app  
- SMS code  
- Phone call  
- Hardware token  

MFA protects against:

- Password theft  
- Phishing  
- Credential stuffing  

If MFA fails → user cannot authenticate.

---

## 🔄 6. SSO (Single Sign‑On)

SSO allows users to sign in once and access:

- Outlook  
- Teams  
- SharePoint  
- OneDrive  
- Third‑party apps  

SSO uses **tokens**, not passwords.

---

## 🪙 7. Tokens (ID, Access, Refresh)

When a user signs in, Entra ID issues **tokens**:

### **ID Token**
- Proves who the user is  
- Used by apps to identify the user  

### **Access Token**
- Grants access to resources  
- Short‑lived (usually 1 hour)  

### **Refresh Token**
- Gets new access tokens  
- Prevents repeated sign‑ins  

If tokens break → user gets sign‑in loops or app errors.

---

## 🛡️ 8. Conditional Access (CA)

Conditional Access controls *how* and *when* users can sign in.

Policies can require:

- MFA  
- Compliant device  
- Trusted location  
- Specific app  
- Block legacy authentication  

Examples:

- “Require MFA when outside the office”  
- “Block access from non‑compliant devices”  
- “Allow only approved apps”  

If CA blocks a user → they cannot sign in.

---

## 👥 9. Groups & Roles

### **Groups**
Used for:
- Access to apps  
- SharePoint permissions  
- Teams membership  
- License assignment  

Types:
- Security groups  
- Microsoft 365 groups  
- Dynamic groups  

### **Roles**
Used for admin permissions:
- Helpdesk Admin  
- User Administrator  
- Global Reader  
- Global Administrator  

Roles = power  
Groups = access

---

## 🌍 10. Hybrid Identity (AD + Entra)

Many organisations use:

- **On‑prem Active Directory**  
- **Cloud Entra ID**  

Connected via **Entra Connect**.

This means:

- Passwords sync  
- Groups sync  
- Devices hybrid join  

If sync fails → user cannot authenticate.

---

## 🧠 11. Why Identity Matters in IT Support

Identity issues cause:

- Sign‑in failures  
- MFA lockouts  
- Access denied  
- Conditional Access blocks  
- Licensing issues  
- Guest access problems  
- Token loops  
- Device registration failures  

Identity is the root cause of many M365 tickets.

---

## 📚 Related Pages

- [Entra Troubleshooting](entra-troubleshooting.md)  
- [Access Requests](access-requests.md)  
- [Identity Scenarios](identity-scenarios.md)

---

## ✔️ Status: Complete

This page forms part of the Identity & Access section.


