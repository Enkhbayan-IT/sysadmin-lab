# Lab 01 - Windows Server 2025 Installation

## Overview

This lab demonstrates the deployment and initial configuration of Windows Server 2025 using Oracle VirtualBox. The goal is to build a Windows Server environment that will later be used for Active Directory, DNS, DHCP, Group Policy, and other infrastructure services.

---

# Lab Environment

| Component | Configuration |
|-----------|---------------|
| Hypervisor | Oracle VirtualBox |
| Host Operating System | Windows 10 |
| Guest Operating System | Windows Server 2025 Standard Evaluation (Desktop Experience) |
| Virtual Machine | SERVER-1 |
| Memory | 8 GB RAM |
| Processors | 4 vCPUs |
| Storage | 60 GB VDI |
| Firmware | EFI Enabled |
| Network Adapter | Bridged Adapter |
| Graphics Controller | VBoxSVGA |

---

# Objectives

- Deploy Windows Server 2025
- Configure a virtual machine in Oracle VirtualBox
- Prepare the operating system for infrastructure services
- Configure basic networking
- Prepare the server for Active Directory deployment

---

# Installation Steps

### 1. Create the Virtual Machine

A new virtual machine named **SERVER-1** was created in Oracle VirtualBox with the following configuration:

- 8 GB RAM
- 4 Virtual CPUs
- 60 GB Virtual Disk (VDI)
- EFI Enabled
- Bridged Network Adapter
- Windows Server 2025 ISO attached

![Virtual Machine Configuration](screenshots/01-virtualbox-settings.png)

---

### 2. Install Windows Server 2025

The **Windows Server 2025 Standard Evaluation (Desktop Experience)** edition was selected during the installation process.

Desktop Experience was chosen to provide a graphical user interface (GUI), making server administration easier while learning Windows Server.

![Windows Server Installation](screenshots/02-windows-server-installation.png)

---

### 3. Configure Basic Networking

A static IPv4 configuration was assigned.

| Setting | Value |
|---------|------|
| IP Address | 192.168.10.200 |
| Subnet Mask | 255.255.255.0 |
| Default Gateway | 192.168.10.1 |
| Preferred DNS | 1.1.1.1 |
| Alternate DNS | 8.8.8.8 |

At this stage, public DNS servers were temporarily used before promoting the server to a Domain Controller.

![Static IPv4 Configuration](screenshots/03-static-ip.png)

---

# Skills Practiced

- Oracle VirtualBox
- Windows Server Installation
- Virtual Machine Configuration
- Windows Server Deployment
- Static IPv4 Configuration
- Windows Networking
- GUI Server Administration

---

# Technologies Used

- Oracle VirtualBox
- Windows Server 2025
- IPv4
- Desktop Experience
- Bridged Networking

---

# Next Lab

The next lab will cover:

- Server Rename
- Windows Updates
- Active Directory Domain Services (AD DS)
- Domain Controller Promotion

---

## Author

**Enkhbayan**

System Administration Home Lab
