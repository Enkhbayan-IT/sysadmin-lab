# Windows Server Storage Spaces Lab

## Objective
Configure Windows Server Storage Spaces using multiple virtual disks and create a parity-protected volume.

## Lab Environment
- Windows Server
- Oracle VirtualBox
- 5 × 10 GB virtual data disks
- Windows Storage Spaces
- PowerShell
- Server Manager

## Architecture

5 × 10 GB Physical Disks
        ↓
      LabPool
        ↓
  ParityDisk (26 GB)
        ↓
   Parity Volume
        ↓
       Z:\

## Implementation

### 1. Added Physical Disks
Five 10 GB virtual disks were attached to SERVER-01 for the Storage Spaces lab.

### 2. Created Storage Pool
Created a storage pool named `LabPool` using the five available physical disks.

### 3. Created Parity Virtual Disk
Created a fixed-provisioned virtual disk named `ParityDisk` using the Parity resiliency layout.

### 4. Brought the Virtual Disk Online
The newly created virtual disk initially appeared Offline and Read-Only.

Resolved with:

Set-Disk -Number 7 -IsOffline $false
Set-Disk -Number 7 -IsReadOnly $false

### 5. Created Volume
Initialized the virtual disk and created a formatted volume.

Final volume:
- Label: ParityVolume
- Drive: Z:
- Capacity: approximately 26 GB
- Resiliency: Parity

## Troubleshooting

### Server Manager displayed only one physical disk
Although Server Manager showed only one disk, PowerShell confirmed that all five disks were members of `LabPool`.

Verification:

Get-StoragePool -FriendlyName "LabPool" | Get-PhysicalDisk

### GUI could not create the Parity virtual disk
The Server Manager wizard reported that there were not enough physical disks.

The virtual disk was successfully created with PowerShell:

New-VirtualDisk -StoragePoolFriendlyName "LabPool" `
-FriendlyName "ParityDisk" `
-ResiliencySettingName Parity `
-ProvisioningType Fixed `
-UseMaximumSize

## Result
Successfully configured a Windows Storage Spaces parity volume using five virtual physical disks and verified the resulting storage configuration.
