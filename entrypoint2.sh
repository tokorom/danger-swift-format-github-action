#!/bin/sh

if [ $# -lt 1 ]; then
    echo -e "\e[31mUsage: $0 [cmd]\e[m"
    exit 1
fi

swift-format lint -r ios-app share > report.txt 2>&1
ls -la
more report.txt
danger-swift $@
