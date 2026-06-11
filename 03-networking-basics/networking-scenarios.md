# Networking Scenarios – Realistic Tickets & Model Responses

A collection of real-world networking issues and example responses demonstrating clear troubleshooting, communication, and escalation practices.

---

## 📝 Scenario 1 — “I can’t connect to the internet”

### **User Report**
> “My laptop says ‘No Internet’. Wi‑Fi shows connected but nothing loads.”

### **Initial Checks**
- Confirm if other devices are affected  
- Ask user to restart router  
- Check if issue is Wi‑Fi only or Ethernet too  

### **Troubleshooting Steps**
1. Run:
ipconfig /all
- If 169.254.x.x → DHCP failure  
2. Ping gateway:
ping 192.168.1.1
3. Ping external IP:
ping 8.8.8.8
4. Test DNS:
nslookup google.com

### **Resolution**
- User had a 169.254.x.x address  
- Restarted router → DHCP restored  
- Device received valid IP and internet returned  

### **Ticket Note (Model Answer)**
User unable to access internet. Device receiving APIPA address (169.254.x.x). Guided user to restart router. DHCP restored and device obtained valid IP. Confirmed internet working and DNS resolving. Issue resolved.

---

## 📝 Scenario 2 — “Wi‑Fi keeps dropping during Teams calls”

### **User Report**
> “My Wi‑Fi disconnects every time I’m on a Teams meeting.”

### **Initial Checks**
- Distance from router  
- 2.4GHz vs 5GHz  
- Other devices affected?  
- ISP stability  

### **Troubleshooting Steps**
1. Check Wi‑Fi signal:
netsh wlan show interfaces
2. Switch user to 5GHz SSID  
3. Move closer to router  
4. Restart router  
5. Check for interference (microwave, baby monitor, neighbours)

### **Resolution**
- User was on 2.4GHz with weak signal  
- Switched to 5GHz → stable connection  

### **Ticket Note (Model Answer)**
Wi‑Fi dropping during Teams calls due to weak 2.4GHz signal. Confirmed low signal strength. Guided user to connect to 5GHz SSID and move closer to router. Teams call stable after change. Issue resolved.

---

## 📝 Scenario 3 — “VPN connects but I can’t access shared drives”

### **User Report**
> “VPN says connected but I can’t access the shared drive or internal systems.”

### **Initial Checks**
- Confirm VPN client  
- Check if other remote users affected  
- Ask user to disconnect/reconnect  

### **Troubleshooting Steps**
1. Check routing:
route print
2. Ping internal server:
ping 10.x.x.x
3. Check DNS suffix  
4. Flush DNS:
ipconfig /flushdns

### **Resolution**
- DNS suffix missing after VPN reconnect  
- Restarted VPN client → internal resources accessible  

### **Ticket Note (Model Answer)**
User unable to access internal resources while VPN connected. Routing table showed missing DNS suffix. Restarted VPN client and flushed DNS. User able to access shared drives and internal systems. Issue resolved.

---

## 📝 Scenario 4 — “Printer unreachable on the network”

### **User Report**
> “I can’t print. Printer shows offline.”

### **Initial Checks**
- Is printer shared or networked?  
- Can other users print?  
- Is printer powered on?  

### **Troubleshooting Steps**
1. Ping printer:
ping 192.168.1.50
2. Check printer’s IP hasn’t changed  
3. Restart print spooler:
net stop spooler
net start spooler
4. Re-add printer if needed  

### **Resolution**
- Printer had obtained a new IP via DHCP  
- Updated printer port to correct IP  

### **Ticket Note (Model Answer)**
Printer unreachable due to IP address change. Updated printer port to new IP and confirmed successful test print. Recommended static DHCP reservation to prevent recurrence.

---

## 📝 Scenario 5 — “Website not loading but everything else works”

### **User Report**
> “I can access all websites except one.”

### **Initial Checks**
- Test on another device  
- Test on mobile data  
- Check if site is down globally  

### **Troubleshooting Steps**
1. Clear DNS:
ipconfig /flushdns
2. Test DNS:
nslookup website.com
3. Try alternate DNS (8.8.8.8 / 1.1.1.1)  
4. Test in another browser  

### **Resolution**
- DNS server was returning outdated record  
- Switching to 8.8.8.8 resolved issue  

### **Ticket Note (Model Answer)**
User unable to access specific website. DNS lookup failing on default DNS server. Switched user to Google DNS (8.8.8.8). Website loading normally. Issue resolved.

---

## 📝 Scenario 6 — “Ethernet not working but Wi‑Fi is fine”

### **User Report**
> “My wired connection doesn’t work but Wi‑Fi does.”

### **Initial Checks**
- Cable seated correctly  
- Switch port lights active  
- Try different cable  

### **Troubleshooting Steps**
1. Check adapter status  
2. Disable/enable Ethernet adapter  
3. Run:
ipconfig /all
4. Check for static IP misconfiguration  
5. Update NIC drivers  

### **Resolution**
- Faulty Ethernet cable  
- Replaced cable → connection restored  

### **Ticket Note (Model Answer)**
Ethernet not working due to faulty cable. Replaced cable and confirmed valid IP, gateway reachability, and internet access. Issue resolved.

---

## 🧠 Why These Scenarios Matter

These examples demonstrate:

- Clear communication  
- Logical troubleshooting  
- Correct use of networking tools  
- Professional ticket documentation  
- Realistic IT support behaviour  

This is exactly what hiring managers look for.

---

## 📚 Related Pages

- [Networking Fundamentals](networking-fundamentals.md)  
- [Network Troubleshooting](network-troubleshooting.md)  
- [Home Network Setup](home-network-setup.md)

---

## ✔️ Status: Complete

This page forms part of the Networking Basics section.

