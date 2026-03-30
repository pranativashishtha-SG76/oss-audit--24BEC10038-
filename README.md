# oss-audit--24BEC10038
The Open Source Audit
## Student Details
Name: Pranati Vashishtha
Roll number: 24BEC10038
## chosen software
Software name: python
Description:
Python is a high-level, general-purpose, open-source programming language created by Guido van Rossum and first released in 1991. It is known for its simple, clean, and readable syntax that closely resembles plain English, making it one of the most beginner-friendly languages in the world. Python is covered under the Python Software Foundation License (PSFL), which is an open-source, free software license compatible with GNU GPL.
Python supports multiple programming styles including procedural, object-oriented, and functional programming. It comes with a vast standard library and a huge ecosystem of third-party packages available via pip, covering areas like web development (Django, Flask), data science (NumPy, Pandas), machine learning (TensorFlow, PyTorch), automation, cybersecurity, and much more.
Some key features of Python are that it is interpreted, dynamically typed, platform independent (runs on Windows, Linux, macOS), and highly extensible (can be integrated with C, C++, Java).
## Script description
### script1.sh
script 1 — System Identity Report: This script is like a screen for Linux. It gets some details about the Linux system when it runs. The script collects things like the name of the Linux distribution the version of the kernel the username of the person who is logged in the home directory how long the Linux system has been running, the date and time and the open-source license. The script then shows all this information in an colorful way. It uses echo statements with colors and icons to make it look good. The script also shows a LINUX" banner at the top. The Linux system identity report is useful when someone logs in to the Linux system or when you want to see what the Linux system is, about.
### script2.sh
Script 2 — FOSS Package Inspector: This script checks whether a chosen software package (Python) is installed on the system. It uses dpkg -l to verify installation and grep -E to display the version and license details if found. It then uses a case statement to match the package name and print a one-line open-source philosophy description about it. If the package is not found, it prints a "NOT installed" message. 
### script3.sh
Script 3 — Disk and Permission Auditor: This script loops through a list of important system directories like /etc, /var/log, /home, /usr/bin, and /tmp using a for loop and reports the permissions, owner, group, and disk size of each one. It also includes an additional check specifically for Python-related configuration directories, reporting their permissions and size to confirm the software's presence on the system. 
### script4.sh
Script 4 — Log File Analyzer: This script reads a log file line by line and counts how many lines contain a specific keyword like error or WARNING. It accepts the log file path and keyword as command-line arguments, defaults to "error" if no keyword is given, and checks if the file exists before processing. It uses a while read loop with grep to match lines, increments a counter for each match, and finally prints a summary. It also displays the last 5 matching lines using grep piped into tail -5.
### script5.sh
Script 5 — Open Source Manifesto Generator: This is the most creative script. It interactively asks the user three questions — their favourite open-source tool, their one-word meaning of freedom, and something they would build and share freely. It then uses string concatenation to weave all three answers into a beautifully formatted personal open-source philosophy statement, saves it to a personalized .txt file using the > operator, and displays it on the terminal.

## Steps to Run the Scripts on Linux
Follow the steps below to execute the scripts:
### Step 1: Open Terminal
Open the terminal in your Linux system.
---
### Step 2: Clone the Repository
Download the repository using:
```bash
git clone https://github.com/<your-username>/oss-audit-24BEC10038.git
### Step 3: Navigate to the Folder
cd oss-audit-24BEC10038
### Step 4: Provide Execute Permission
chmod +x *.sh
### Step 5: Run Each Script Individually
./script1.sh
./script2.sh
./script3.sh
./script4.sh
./script5.sh
### Step 6: View Output
The output of each script will be displayed directly on the terminal screen after execution.

## Dependencies
The following are required:
Linux Operating System (Ubuntu recommended)
Bash Shell
Git
