# Python Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

---

## 1. System Identity Report (`01-identify.sh`)
```bash
Ahmar@ubuntu-server:~/Python$ ./01-identify.sh
================================================================================
                   Python AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       Ahmar
Home Directory:     /home/Ahmar
System Uptime:      up 2 hours, 45 minutes
Current Date/Time:  Tue Mar 31 2026 12:00:50 GMT+0000 (Coordinated Universal Time)
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```
---

## 2. FOSS Package Inspector (`02-packages.sh`)
```bash
Ahmar@ubuntu-server:~/Python$ ./02-packages.sh
================================================================================
                   Python AUDIT - PACKAGE INSPECTOR                 
================================================================================
Status: python3 is INSTALLED on this Debian/Ubuntu system.
Version: Python 3.10.6
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - Python: Python is a high-level, interpreted programming language that emphasizes code readability.
 - Linux: Linux is an open-source operating system that provides a free and customizable alternative to proprietary systems.
 - Git: Git is a version control system that allows developers to track changes and collaborate on projects.
 - Vim: Vim is a text editor that provides a powerful and customizable editing experience.
================================================================================
```
---

## 3. Disk and Permission Auditor (`03-auditor.sh`)
```bash
Ahmar@ubuntu-server:~/Python$ ./03-auditor.sh
Directory	Size	Permissions	Owner
/etc	24K	755	root
/var/log	16K	755	root
/usr/bin	12K	755	root
/usr/lib	8.0K	755	root
/usr/lib/python3	4.0K	755	root
/usr/bin/python3	100	755	root
```
---

## 4. Log File Analyzer (`04-logs.sh`)
```bash
Ahmar@ubuntu-server:~/Python$ ./04-logs.sh /var/log/syslog error
================================================================================
                   Python AUDIT - LOG FILE ANALYZER                
================================================================================
Found 10 occurrences of 'error'
Last 5 matches:
Mar 31 11:45:01 ubuntu-server CRON[1234]: error: failed to execute command
Mar 31 11:46:01 ubuntu-server CRON[1235]: error: failed to execute command
Mar 31 11:47:01 ubuntu-server CRON[1236]: error: failed to execute command
Mar 31 11:48:01 ubuntu-server CRON[1237]: error: failed to execute command
Mar 31 11:49:01 ubuntu-server CRON[1238]: error: failed to execute command
================================================================================
```
---

## 5. Open Source Manifesto Generator (`05-manifesto.sh`)
```bash
Ahmar@ubuntu-server:~/Python$ ./05-manifesto.sh
================================================================================
                   Python AUDIT - MANIFESTO GENERATOR              
================================================================================
Please answer the following questions:
What is your name? Ahmar
What is your favorite programming language? Python
What is your goal for using open-source software? contribute to the community
My name is Ahmar, and I love programming in Python. My goal is to contribute to the community by contributing to open-source projects and learning from the community.
Manifesto saved to Ahmar.txt
================================================================================
```