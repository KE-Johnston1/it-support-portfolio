# Access Requests – Identity & Access Management

A structured guide for handling access requests in Microsoft 365 and Microsoft Entra ID.  
This document reflects real IT Support workflows, approval processes, and identity governance practices.

---

## 🧭 1. Initial Verification Steps

Before granting or modifying access, confirm:

- The user’s identity (per organisation policy)
- The user’s job role and department
- Whether access is appropriate for their role
- Whether approval is required (manager, system owner, security)
- Whether the access already exists
- Whether the request is time‑limited or permanent

Document all findings in the ticket.

---

## 👥 2. Types of Access Requests

### **1. Application Access**
Examples:
- SharePoint sites  
- Teams channels  
- SaaS apps (e.g., Jira, Slack, HR systems)  
- Internal web apps  

### **2. Resource Access**
Examples:
- Shared mailboxes  
- Shared drives  
- Distribution lists  
- Printers  

### **3. Role‑Based Access**
Examples:
- Helpdesk Admin  
- User Administrator  
- Teams Administrator  
- SharePoint Administrator  

### **4. Group Membership**
Examples:
- Security groups  
- Microsoft 365 groups  
- Dynamic groups  

### **5. Privileged Access**
Examples:
- Global Admin  
- Exchange Admin  
- Conditional Access Admin  

Privileged access always requires strict approval.

---

## 🛠️ 3. Handling Access Requests (Step‑By‑Step)

### **Step 1 — Validate the Request**
Confirm:
- User identity  
- Business justification  
- Manager approval  
- Data sensitivity level  

If unclear → request clarification.

---

### **Step 2 — Check Existing Access**
Admin Centre → User → Groups / Roles / Apps

Verify:
- Is the user already a member?  
- Does the user already have the license?  
- Does the user already have permissions?  

Avoid duplicate or unnecessary access.

---

### **Step 3 — Apply Access via Groups (Preferred Method)**

**Group‑based access is best practice.**

Examples:
- Add user to “Marketing‑SharePoint‑Access”  
- Add user to “Finance‑Teams‑Members”  
- Add user to “HR‑App‑Users”  

Benefits:
- Easier auditing  
- Easier removal  
- Consistent permissions  

---

### **Step 4 — Apply Access Manually (If Required)**

Only when group‑based access is not available.

Examples:
- Grant “Send As” on shared mailbox  
- Add user directly to SharePoint site  
- Assign app role in Entra ID  

Document manual permissions clearly.

---

### **Step 5 — Apply Licensing (If Needed)**

Admin Centre → User → Licenses & Apps

Examples:
- Assign Microsoft 365 Business Standard  
- Enable Teams  
- Enable SharePoint  
- Enable Exchange Online  

Licenses control access to core services.

---

### **Step 6 — Confirm Access Propagation**

Some changes take time.

Typical propagation times:
- Groups: 1–10 minutes  
- SharePoint: 5–30 minutes  
- Teams: 5–60 minutes  
- Licensing: 5–15 minutes  
- Admin roles: immediate to 5 minutes  

Advise user accordingly.

---

### **Step 7 — Notify the User**

Include:
- What access was granted  
- When it will be available  
- Any next steps (restart app, sign out/in)  
- Any limitations or conditions  

---

## 🔐 4. Approval Requirements

### **Manager Approval Required For:**
- Access to new apps  
- Access to sensitive data  
- Access to shared mailboxes  
- Access to departmental resources  

### **System Owner Approval Required For:**
- Finance systems  
- HR systems  
- CRM systems  
- Security tools  

### **Security Team Approval Required For:**
- Admin roles  
- Conditional Access exemptions  
- Privileged access  
- Guest access to sensitive data  

---

## 🧪 5. Evidence Collection

Always gather:

- Screenshot of request  
- Approval confirmation  
- Group membership before/after  
- License status  
- Permissions applied  
- Steps taken  

Attach logs to the ticket.

---

## 🚨 6. Escalation Criteria

Escalate to Identity/Security Team if:

- Access requires privileged roles  
- Conditional Access blocks access  
- Licensing conflicts occur  
- User requires access to sensitive data  
- Guest access fails due to external restrictions  
- Hybrid identity sync issues prevent access  

Document all steps taken before escalation.

---

## 🛡️ 7. Preventative Actions

- Use group‑based access wherever possible  
- Review access regularly  
- Remove access when no longer needed  
- Follow least‑privilege principles  
- Maintain clear approval workflows  
- Document all manual permissions  

---

## 📚 Related Pages

- [Identity Basics](identity-basics.md)  
- [Entra Troubleshooting](entra-troubleshooting.md)  
- [Identity Scenarios](identity-scenarios.md)

---

## ✔️ Status: Complete

This page forms part of the Identity & Access section.

