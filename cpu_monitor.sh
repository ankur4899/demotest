#!/bin/bash
# Script for monitoring CPU and memory usage every 5 seconds

while true; do
    echo "Monitoring CPU and Memory Usage - $(date)"
    echo "CPU Usage:"
    mpstat 1 1 | grep "all" | awk '{print $3 "% user, " $5 "% system, " $12 "% idle"}'
    echo "Memory Usage:"
    free -m | awk 'NR==2{printf "Memory Usage: %sMB used, %sMB free\n", $3,$4}'
    echo "---------------------------"
    sleep 5
    done
