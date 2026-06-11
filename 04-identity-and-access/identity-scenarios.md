# Identity Scenarios – Realistic Tickets & Model Responses

A collection of real-world identity issues and example responses demonstrating authentication troubleshooting, access management, and professional ticket handling.

---

## 📝 Scenario 1 — “User cannot sign in after password reset”

### **User Report**
> “I changed my password this morning and now I can’t sign in to Outlook or Teams.”

### **Initial Checks**
- Confirm password was changed successfully  
- Check if user is hybrid or cloud-only  
- Check sign‑in logs for failure reason  

### **Troubleshooting Steps**
1. Check sign‑in logs → “Invalid username or password”  
2. Confirm user is entering new password  
3. Ask user to sign in via https://portal.office.com  
4. Clear cached credentials:
control keymgr.dll
5. Sign out of all Office apps  
6. Restart device  

### **Resolution**
- Cached credentials were causing authentication failure  
- Clearing credentials + restart resolved issue  

### **Ticket Note (Model Answer)**
User unable to sign in after password reset. Sign‑in logs showed repeated “invalid password” failures. Cleared cached credentials via Credential Manager, signed user out of all apps, and restarted device. User able to authenticate successfully. Issue resolved.

---

## 📝 Scenario 2 — “MFA not prompting on new phone”

### **User Report**
> “I got a new phone and now I’m not receiving MFA prompts.”

### **Initial Checks**
- Confirm user still has old phone  
- Confirm Authenticator app installed  
- Check MFA methods in Entra  

### **Troubleshooting Steps**
1. Check Authentication Methods → old phone still registered  
2. Delete old phone  
3. Add new phone number (if policy allows)  
4. Force re‑registration  
5. User signs in → sets up Authenticator app  

### **Resolution**
- User had not re‑registered MFA after phone upgrade  
- Reset MFA methods and guided through setup  

### **Ticket Note (Model Answer)**
User unable to receive MFA prompts after phone upgrade. Old device still registered. Removed old MFA methods and forced re‑registration. User successfully set up Authenticator on new phone and authenticated. Issue resolved.

---

## 📝 Scenario 3 — “Conditional Access blocking login”

### **User Report**
> “I can’t log in from home. It says access is blocked.”

### **Initial Checks**
- Check sign‑in logs  
- Check CA policies applied  
- Check user location  

### **Troubleshooting Steps**
1. Sign‑in logs → “Blocked by Conditional Access: Trusted Location Required”  
2. Confirm user working remotely  
3. Verify policy: “Require trusted location for admin roles”  
4. User is not admin → misapplied group membership  

### **Resolution**
- User incorrectly added to admin group  
- Removed from group → CA no longer applied  

### **Ticket Note (Model Answer)**
User blocked by Conditional Access requiring trusted location. Sign‑in logs showed admin CA policy applied. Identified incorrect group membership assigning admin role. Removed user from group. User able to authenticate remotely. Issue resolved.

---

## 📝 Scenario 4 — “Guest user cannot access SharePoint”

### **User Report**
> “Our external partner says they can’t access the SharePoint folder we shared.”

### **Initial Checks**
- Confirm guest invitation accepted  
- Confirm correct email used  
- Check external sharing settings  
- Check SharePoint permissions  

### **Troubleshooting Steps**
1. Check guest account → exists but not redeemed  
2. Resend invitation  
3. Confirm user signs in with same email invited  
4. Check SharePoint site permissions → add guest to site  

### **Resolution**
- Guest had not redeemed invitation  
- After redemption + permission check, access worked  

### **Ticket Note (Model Answer)**
Guest unable to access SharePoint due to unredeemed invitation. Resent invite and confirmed redemption. Added guest to site permissions. Guest able to access folder successfully. Issue resolved.

---

## 📝 Scenario 5 — “User stuck in sign‑in loop”

### **User Report**
> “I sign in, it accepts my password, then sends me back to the login screen.”

### **Initial Checks**
- Browser or desktop app?  
- Check sign‑in logs  
- Check token validity  

### **Troubleshooting Steps**
1. Clear browser cache  
2. Remove account from Windows → Work/School Accounts  
3. Clear cached credentials:
control keymgr.dll
4. Sign out of all Office apps  
5. Restart device  
6. User signs in again  

### **Resolution**
- Corrupted tokens causing repeated redirects  
- Clearing cache + credentials resolved issue  

### **Ticket Note (Model Answer)**
User experiencing sign‑in loop due to corrupted tokens. Cleared browser cache, removed Work/School account, cleared Credential Manager, and restarted device. User able to authenticate normally. Issue resolved.

---

## 📝 Scenario 6 — “User needs access to a shared mailbox”

### **User Report**
> “I need access to the team shared mailbox.”

### **Initial Checks**
- Confirm manager approval  
- Confirm mailbox exists  
- Confirm user not already assigned  

### **Troubleshooting Steps**
1. Exchange Admin → Mailboxes → Shared  
2. Select mailbox → Mailbox Delegation  
3. Add user to:
- Full Access  
- Send As (if required)  
4. Ask user to restart Outlook  

### **Resolution**
- User added to shared mailbox permissions  
- Access available after Outlook restart  

### **Ticket Note (Model Answer)**
User requested access to shared mailbox. Confirmed manager approval. Added user to Full Access and Send As permissions. User restarted Outlook and confirmed mailbox visible. Issue resolved.

---

## 🧠 Why These Scenarios Matter

These examples demonstrate:

- Clear identity troubleshooting  
- Correct use of Entra ID tools  
- Understanding of MFA, CA, tokens, and groups  
- Professional communication  
- Realistic IT support behaviour  

This is exactly what hiring managers look for.

---

## 📚 Related Pages

- [Identity Basics](identity-basics.md)  
- [Entra Troubleshooting](entra-troubleshooting.md)  
- [Access Requests](access-requests.md)

---

## ✔️ Status: Complete

This page forms part of the Identity & Access section.
