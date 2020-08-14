#!/bin/sh

if [ $# -lt 1 ]; then
    echo -e "\e[31mUsage: $0 [cmd]\e[m"
    exit 1
fi

ls -la
swift-format lint -r app > report.txt 2>&1
more report.txt
ls -la
danger-swift $@
