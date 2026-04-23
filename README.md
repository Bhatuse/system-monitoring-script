# system-monitoring-script

This script will monitor, print and store the data in log script-logs.txt along with date for high CPU usage.

To use the script, download it, make it executable using +x and execute it using ./

Sample output as follows.

root@pravin:/home/pravin# nano usage-tracker.sh
root@pravin:/home/pravin# ./usage-tracker.sh
==============================
 --- Starting Monitoring Script ---
==============================
==============================
 --- Your current RAM usage is ---
==============================
               total        used        free      shared  buff/cache   available
Mem:            11Gi       862Mi       9.1Gi        10Mi       1.7Gi        10Gi
Swap:          4.0Gi          0B       4.0Gi
==============================
 --- Your current CPU Cores are ---
==============================
8
High CPU Usage Detected on date = Thu Apr 23 11:06:14 AM UTC 2026 | Usage = 5.4%
==============================
 --- Your current CPU usage is ---
==============================
CPU Usage: 5.4%
==============================
 --- Your current disk usage is ---
==============================
Filesystem                         Size  Used Avail Use% Mounted on
tmpfs                              1.2G  1.3M  1.2G   1% /run
/dev/mapper/ubuntu--vg-ubuntu--lv   48G   13G   32G  29% /
tmpfs                              5.9G     0  5.9G   0% /dev/shm
tmpfs                              5.0M     0  5.0M   0% /run/lock
/dev/sda2                          2.0G  260M  1.6G  15% /boot
/dev/sda1                          1.1G  6.1M  1.1G   1% /boot/efi
overlay                             48G   13G   32G  29% /var/lib/docker/rootfs/overlayfs/35882bd7f7bc34d964c58433808df741fcd8536d1eec1840cfc8125d97257c60
tmpfs                              1.2G  4.0K  1.2G   1% /run/user/1000
==============================
 --- END OF SCRIPT, OUTPUT WILL BE STORED IN script-logs.txt FILE ---
==============================
root@pravin:/home/pravin# ls
ansible  docker-lab  k8squest  script-logs.txt  usage-tracker.sh
root@pravin:/home/pravin# cat script-logs.txt
High CPU Usage Detected on date = Thu Apr 23 11:06:14 AM UTC 2026 | Usage = 5.4%
root@pravin:/home/pravin#
