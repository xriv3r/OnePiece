#! /bin/bash

echo "check ram and swap"
free -h | grep -v + > /tmp/ramcache
echo -e "Ram Usages :" $tecreset
cat /tmp/ramcache | grep -v "Swap"
echo  "Swap Usages :" $tecreset
cat /tmp/ramcache | grep -v "Mem"

# Check Disk Usages
df -h| grep 'Filesystem\|/dev/sda*' > /tmp/diskusage
echo -e "Disk Usages :" $tecreset
cat /tmp/diskusage

# Check Load Average
loadaverage=$(top -n 1 -b | grep "load average:" | awk '{print $10 $11 $12}')
echo -e "Load Average :" $tecreset $loadaverage

# Check System Uptime
tecuptime=$(uptime | awk '{print $3,$4}' | cut -f1 -d,)
echo -e "System Uptime Days/(HH:MM):" $tecreset $tecuptime

# Remove Temporary Files
rm /tmp/ramcache /tmp/diskusage
