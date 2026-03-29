# Step 04 - Windows Server Virtual Machine Creation

---

## Objective

In this step, I created the Windows Server virtual machine that will serve as the Domain Controller (DC01) for the Active Directory environment.

The goal was to establish the foundation for domain services within the lab.

---

## Technologies Used

Oracle VirtualBox

Windows Server 2022 ISO

Windows 11 (Host Machine)

---

## Key Concepts

Virtual Machine Creation

Operating System Installation

Resource Allocation

Boot Configuration

Server Role Preparation

---

## Configuration / Implementation

### 1. Created New Virtual Machine

I created a new virtual machine in VirtualBox and named it:

DC01

This machine will later be promoted to a Domain Controller.

---

### 2. Selected Operating System

Configured the VM to use:

Windows Server 2022

This ensures compatibility with Active Directory services.

---

### 3. Allocated System Resources

Configured system resources for the VM:

RAM allocation

CPU allocation

These settings ensure stable performance during installation and operation.

---

### 4. Created Virtual Hard Disk

Configured a virtual hard disk for the VM.

This provides storage for the operating system and future Active Directory data.

---

### 5. Mounted Windows Server ISO

Attached the Windows Server ISO file to the virtual machine.

This allows the OS installation process to begin on boot.

---

### 6. Installed Windows Server

Booted the VM and completed the Windows Server installation process.

Configured basic system settings during installation.

---

### 7. Verified Installation

Confirmed that the operating system installed successfully.

Verified the system boots properly and is ready for configuration.

---

## Validation / Verification

Verified VM creation completed successfully

Confirmed Windows Server installed without errors

Verified system boots into the OS correctly

Confirmed VM is ready for network configuration

---

## Evidence

Screenshots for this step:

screenshots/step-04/

---

## Key Takeaways

Creating a properly configured virtual machine is critical for lab stability

Correct OS selection ensures compatibility with Active Directory

Resource allocation impacts performance and usability

This step establishes the foundation for all future domain configuration

---