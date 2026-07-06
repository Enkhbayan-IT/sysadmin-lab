# Lab 02 - Initial Server Configuration

## Overview

This lab covers the initial configuration of a Windows Server 2025 installation after deployment. The server was prepared for future infrastructure roles by configuring network settings and performing basic system configuration.

---

# Lab Environment

| Component | Configuration |
|-----------|---------------|
| Hypervisor | Oracle VirtualBox |
| Host Operating System | Windows 10 |
| Guest Operating System | Windows Server 2025 Standard Evaluation |
| Virtual Machine | SERVER-01 |
| Network | Bridged Adapter |

---

# Objectives

- Configure the server after installation
- Assign a static IPv4 address
- Configure DNS settings
- Review SConfig options
- Prepare the server for Active Directory deployment

---

# Tasks Completed

- Configured a static IPv4 address
- Configured the default gateway
- Assigned temporary public DNS servers
- Verified network settings
- Reviewed Windows Server SConfig
- Verified computer name (SERVER-01)
- Enabled Remote Management
- Enabled Remote Desktop

---

# Network Configuration

| Setting | Value |
|---------|-------|
| IP Address | 192.168.10.200 |
| Subnet Mask | 255.255.255.0 |
| Default Gateway | 192.168.10.1 |
| Preferred DNS | 1.1.1.1 |
| Alternate DNS | 8.8.8.8 |

> **Note:** Public DNS servers were used temporarily during the initial configuration. After installing Active Directory and DNS Server, the Preferred DNS server was changed to the local DNS server.

---

# Screenshots

### Static IPv4 Configuration

![Static IP](screenshots/01-static-ip.png)

### Windows Server SConfig

![SConfig](screenshots/02-sconfig.png)

---

# Skills Practiced

- Windows Server Administration
- Static IPv4 Configuration
- DNS Client Configuration
- Windows SConfig
- Basic Network Configuration
- Server Preparation

---

# Technologies Used

- Windows Server 2025
- Oracle VirtualBox
- IPv4 Networking
- SConfig
- TCP/IP

---

# Outcome

The server was successfully configured with a static IP address and basic network settings. The operating system was prepared for installing infrastructure services such as Active Directory Domain Services (AD DS) and DNS Server.

---

## Next Lab

**Lab 03 – Active Directory Domain Services (AD DS) Installation**
