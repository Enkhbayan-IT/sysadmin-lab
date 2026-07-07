# 06 - Join a Windows Server to an Active Directory Domain

## Overview

This lab demonstrates how to join a second Windows Server 2025 machine to an existing Active Directory domain. The server is configured with a static IP address, uses the domain controller as its preferred DNS server, and is successfully joined to the **corp.training.com** domain. After joining the domain, the computer object is organized into the appropriate Organizational Unit (OU) for server management.

---

## Objectives

* Configure a static IP address on a secondary server.
* Configure the preferred DNS server to use the domain controller.
* Join a Windows Server 2025 machine to an existing Active Directory domain.
* Verify successful domain membership.
* Manage computer objects using Active Directory Users and Computers.
* Organize servers into a dedicated Organizational Unit (OU).

---

## Lab Environment

| Component         | Configuration                            |
| ----------------- | ---------------------------------------- |
| Operating System  | Windows Server 2025                      |
| Domain Controller | SERVER01                                 |
| Member Server     | SERVER02                                 |
| Domain            | corp.training.com                        |
| DNS Server        | SERVER01                                 |
| Directory Service | Active Directory Domain Services (AD DS) |

---

## Configuration Steps

### 1. Prepare SERVER02

* Configure the correct time zone.
* Disable Internet Explorer Enhanced Security Configuration (Lab Environment).
* Rename the server to **SERVER02**.
* Configure a static IPv4 address.
* Set the Preferred DNS Server to the IP address of **SERVER01**.

---

### 2. Join the Domain

1. Open **Server Manager**.
2. Select **Local Server**.
3. Click the computer name (Workgroup).
4. Open **System Properties**.
5. Select **Change**.
6. Choose **Domain**.
7. Enter:

```
corp.training.com
```

8. Authenticate using:

```
CORP\Administrator
```

9. Restart the server when prompted.

---

### 3. Verify Domain Membership

After reboot:

* Log in using a domain account.
* Open **Server Manager**.
* Confirm that the server is joined to:

```
corp.training.com
```

---

### 4. Organize the Computer Object

On **SERVER01**:

* Open **Active Directory Users and Computers**.
* Locate **SERVER02** in the **Computers** container.
* Move the computer object to the **Servers** Organizational Unit.

This helps organize infrastructure servers and simplifies administration.

---

## Verification Checklist

* SERVER02 has a static IP address.
* Preferred DNS points to SERVER01.
* SERVER02 successfully joins **corp.training.com**.
* Domain login works correctly.
* Server Manager displays the correct domain.
* SERVER02 appears in Active Directory.
* SERVER02 is moved into the **Servers** OU.

---

## Screenshots

| Screenshot                   | Description                                     |
| ---------------------------- | ----------------------------------------------- |
| 01-server02-name-and-ip.png  | SERVER02 hostname and static IP configuration   |
| 02-dns-settings.png          | Preferred DNS server configuration              |
| 03-join-domain.png           | Domain join configuration                       |
| 04-domain-credentials.png    | Domain administrator authentication             |
| 05-restart-required.png      | Successful domain join confirmation             |
| 06-server02-domain-login.png | Logging in with a domain account                |
| 07-domain-membership.png     | Domain membership verification                  |
| 08-ad-computers-default.png  | SERVER02 appears in the Computers container     |
| 09-move-server-ou.png        | Moving SERVER02 into the Servers OU             |
| 10-server-in-servers-ou.png  | SERVER02 successfully located in the Servers OU |

---

## Skills Demonstrated

* Windows Server Administration
* Active Directory Domain Services (AD DS)
* Domain Join Operations
* DNS Client Configuration
* Static IP Configuration
* Active Directory Users and Computers
* Organizational Unit (OU) Management
* Computer Object Administration
* Multi-Server Environment Management
* Windows Server Troubleshooting

---

## Result

A secondary Windows Server 2025 machine was successfully joined to an existing Active Directory domain. The server authenticates using domain credentials, communicates with the domain controller through DNS, and is managed centrally within Active Directory by placing it into the appropriate Organizational Unit.
