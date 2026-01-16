#!/bin/bash

echo "=============================="
echo "Starting Linux Full DevOps Mini Project"
echo "=============================="

# 1️⃣ File & Directory Management
echo "Creating project folder and files..."
mkdir -p devops_lab
cd devops_lab
touch file1.txt file2.txt
echo "Hello Linux" > file1.txt
echo "DevOps Practice" > file2.txt
ls -l

# 2️⃣ File Permissions
echo "Changing file permissions..."
chmod 755 file1.txt
chmod 644 file2.txt
ls -l

# 3️⃣ User & Group Management
echo "Current user and groups..."
whoami
groups
echo "Listing first 5 users:"
cut -d: -f1 /etc/passwd | head -n 5
echo "Listing first 5 groups:"
cut -d: -f1 /etc/group | head -n 5

# 4️⃣ System Info
echo "System and kernel info..."
uname -a
uptime
df -h
free -m

# 5️⃣ Package Management (Ubuntu example)
echo "Top 5 installed packages:"
dpkg --list | head -n 5

# 6️⃣ Disk Usage
echo "Disk usage and inodes:"
df -h
df -i

# 7️⃣ File Reading & Creation
echo "Reading file contents..."
cat file1.txt

# 8️⃣ Shell Commands
echo "Current shell and environment variables:"
echo $SHELL
env | head -n 5
pwd

# 9️⃣ Networking
echo "Network interfaces and connectivity..."
ip addr
ping -c 3 google.com

#  🔟 Process Monitoring
echo "Top processes:"
top -b -n 1 | head -n 10
ps -ef | head -n 10

# 1️⃣1️⃣ Text Processing
echo "Text Processing with grep, awk, sed..."
echo -e "Alice 25\nBob 30\nCharlie 28\nDavid 22" > users.txt
echo "Grep example (search 'Bob'):"
grep "Bob" users.txt
echo "Awk example (print names only):"
awk '{print $1}' users.txt
echo "Sed example (replace 'Alice' with 'Alex'):"
sed 's/Alice/Alex/' users.txt
cat users.txt

# 1️⃣2️⃣ SCP Example (optional demo)
echo "SCP example: copy a file locally (simulation)"
echo "You can use: scp file user@remote:/path"

echo "=============================="
echo "Linux Full DevOps Mini Project Completed"
echo "=============================="

