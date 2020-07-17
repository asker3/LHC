#!/bin/bash
echo "CPU numbers:"
cat /proc/cpuinfo | grep "physical id" | sort | uniq | wc -l
echo "CPU cores:"
cat /proc/cpuinfo | grep "cpu cores"|uniq
echo "CPU:"
grep "model name" /proc/cpuinfo |uniq
echo "Memory:"
grep MemTotal /proc/meminfo
echo "Network numbers:"
lspci | grep -i ethernet
echo "MAC:"
dmesg | grep eth
#内存插槽信息
dmidecode|grep -P -A5 "Memory\s+Device"|grep Size|grep -v Range
#内存速率
dmidecode|grep -A16 "Memory Device"|grep 'Speed'
