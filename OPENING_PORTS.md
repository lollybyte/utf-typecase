# 🔓 Opening Ports Guide

To allow external access to your server, make sure the designated port is open on the **computer where the server is running**. This involves configuring your system’s firewall or security settings to accept incoming connections on that port.

For example, if your server is running on port `5000`, ensure that:

- Your local firewall permits traffic on port `5000`
- Your network/router settings don’t block that port
- You’re aware of security implications when making a port publicly accessible

Opening a port makes the server reachable from other devices — but only if it's properly secured.

---

## Linux

### With `ufw` Ubuntu/Debian

#### Open:
```
sudo ufw allow 5000/tcp
```
#### Close:
```
sudo ufw deny 5000/tcp
```
### With `iptables`

#### Open:
```
sudo iptables -A INPUT -p tcp --dport 5000 -j ACCEPT
```
#### Close:
```
sudo iptables -A INPUT -p tcp --dport 5000 -j DROP
```

---

## Mac: Temporary with pfctl
### Open:
```
echo "pass in proto tcp from any to any port 5000" | sudo pfctl -ef -
```
### Close:
```
echo "block in proto tcp from any to any port 5000" | sudo pfctl -ef -
```

---

## Nix-OS: Temporary Method (NixOS 24.05+)
```
sudo nixos-firewall-tool open tcp 5000
```
- Show current rules: `sudo nixos-firewall-tool show`
- Reset to system config: `sudo nixos-firewall-tool reset`

---

## Windows
You must run them in an elevated PowerShell or Command Prompt (right-click → Run as Administrator). 
 
### Opening:
```
netsh advfirewall firewall add rule name="Open Port 5000" dir=in action=allow protocol=TCP localport=5000
```
### Delete Rule:
```
netsh advfirewall firewall delete rule name="Open Port 5000"
```
### Block it explicitly:
```
netsh advfirewall firewall add rule name="Block Port 5000" dir=in action=block protocol=TCP localport=5000
```