

# Infra Declaration

## Goal
My Goal is centralize, save, and keep the structure available.
All of it, to rebuild the infra quickly.

This repo will receive some config file, to save the config for every services.
e.g. sshd.cfg haproxy.cfg

It will also receive some script in Shell, Python and I'm not lazy PowerShell.

For the understanding for visitors and myself, an array with IP, Service;
and Schema of KNetwork.

---

### KNetwork

| Device | Display Name | IP Addr | Virtual IP | Mask | Services | Port | Describe |
| :--------: | :----------: | :---------: | :-------: | :---------: | :---------: | :-----: | :-----------------------: |
| Asus Router | x | 192.168.50.1 | x | 255.255.255.0 | Routing | * | KNetwork Router - Wireless and Linked |
| BastionSSH-2 | bastion2 | 192.168.50.9 | x | 255.255.255.0 | Bastion_SSH | * | Bounce machine to secure access to Infra "Backup"|
| BastionSSH-1 | bastion1 | 192.168.50.10 | x | 255.255.255.0 | Bastion_SSH | * | Bounce machine to secure access to Infra |
| Provider01 | provider1 | 192.168.50.11 | x | 255.255.255.0 | IaC Tools | 22 | Master of Infra as Code Tools, Centralize all tools with cfg files |
| Provider02 | provider2 | 192.168.50.12 | x | 255.255.255.0 | IaC Tools | 22 | Master of Infra as Code Tools, Centralize all tools with cfg files "Backup" |
| Container1 | container1 | 192.168.50.15 | x | 255.255.255.0 | Docker | 22 * | Server with Docker installed |
| Database01 | database01 | 192.168.50.21 | x | 255.255.255.0 | SQL | * | SQL Database |
| Database02 | database02 | 192.168.50.22 | x | 255.255.255.0 | Redis | * | NoSQL Database |
| Services | services | 192.168.50.99 | x | 255.255.255.0 | DHCP DNS | 22 53 67 68 | Server with classic services DHCP and DNS |
| IntraWeb | intraweb | 192.168.50.100 | x | 255.255.255.0 | Nginx | * | Web Server |
| ESXI | esxi |192.168.50.200 | x | 255.255.255.0 | Hosting VM | 80 443 * | HyperV which Hosting some VM - Access with Web Interface |

---