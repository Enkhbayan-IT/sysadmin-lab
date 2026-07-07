# 07 - Group Policy Management

## Overview

This lab introduces Microsoft Group Policy (GPO), one of the core management features of Windows Server. Group Policy enables administrators to centrally configure users and computers across an Active Directory domain without manually configuring each device.

In this lab, a custom Group Policy Object was created and linked to the **End Users** Organizational Unit to prevent users from accessing the Windows Control Panel.

---

## Objectives

- Understand the purpose of Group Policy.
- Explore the Default Domain Policy.
- Create a custom Group Policy Object (GPO).
- Link a GPO to an Organizational Unit.
- Configure a user policy.
- Restrict access to Control Panel for end users.

---

## Lab Environment

| Component | Configuration |
|----------|---------------|
| Operating System | Windows Server 2025 |
| Domain | corp.enkhbayan.com |
| Management Tool | Group Policy Management |
| Target OU | End Users |

---

## Configuration Steps

### 1. Open Group Policy Management

Server Manager

→ Tools

→ Group Policy Management

---

### 2. Review the Default Domain Policy

Verified the built-in security settings including:

- Password Policy
- Password Complexity
- Account Lockout Policy

---

### 3. Create a New Group Policy Object

Created:

```text
Disable Control Panel - End Users
```

---

### 4. Configure the Policy

```
User Configuration
 └ Policies
    └ Administrative Templates
       └ Control Panel
```

Enabled:

```text
Prohibit access to Control Panel and PC settings
```

---

### 5. Link the GPO

Linked the GPO to:

```text
End Users
```

so the policy only applies to end-user accounts.

---

## Skills Demonstrated

- Group Policy Management
- Group Policy Objects (GPO)
- Active Directory Administration
- Organizational Unit Management
- User Configuration Policies
- Centralized Windows Administration
- Security Policy Configuration

---

## Screenshots

| Screenshot | Description |
|------------|-------------|
| 01-group-policy-management.png | Group Policy Management console |
| 02-default-domain-policy.png | Reviewing the Default Domain Policy |
| 03-new-gpo-created.png | Creating a new Group Policy Object |
| 04-disable-control-panel-policy.png | Configuring the Control Panel restriction |
| 05-gpo-linked-to-end-users-ou.png | GPO linked to the End Users Organizational Unit |

---

## Result

A custom Group Policy Object was successfully created and linked to the **End Users** Organizational Unit. The policy prevents end users from accessing the Windows Control Panel while leaving administrators unaffected, demonstrating centralized policy management using Active Directory.
