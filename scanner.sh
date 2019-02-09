#!/bin/bash

directories=$(find -mindepth 1 -type d | wc -l)
echo "Folder container $directories directories."
files=$(find -type f | wc -l)
echo "Folder container $files files."
echo "Quantity of file extensions: "
extensions=$(find ./ -type f | grep -E ".*\.[a-zA-Z0-9]*$" | sed -e 's/.*\(\.[a-zA-Z0-9]*\)$/\1/' | sort | uniq -c | sort -n)
echo "$extensions"
largest=$(find . -type f -exec ls -al {} \; | sort -nr -k5 | head -n 1)
echo "Largest file is: "
echo "$largest"
dirsize=$(du -hs)
echo "Directory size is: $dirsize ."
