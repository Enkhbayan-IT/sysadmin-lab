# Windows System Health Report

## Overview

A PowerShell script that collects and displays basic Windows system health information in a structured report.

This project was created as part of my PowerShell and Windows Server administration practice.

## Features

The script collects and reports:

- Computer name
- Current logged-in user
- Report generation time
- Operating system information
- Last system reboot time
- Total physical memory in GB
- Filesystem drives
- Used and free disk space in GB
- Running services
- Stopped services
- Low disk space warnings

## PowerShell Concepts Demonstrated

This script demonstrates the following PowerShell concepts:

- Variables
- Environment variables
- Cmdlets
- Objects and properties
- Pipeline (`|`)
- `Where-Object`
- `Select-Object`
- Calculated properties
- `foreach` loops
- `if / else` statements
- Comparison operators
- `$_` automatic variable
- .NET static methods
- `Write-Host`
- Output formatting with `Format-Table`

## Key Examples

### Environment Variables

The script retrieves the computer name and current user dynamically:

```powershell
$computerName = $env:COMPUTERNAME
$currentUser = $env:USERNAME
