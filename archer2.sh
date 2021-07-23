#!/bin/bash

m_path="/home/oleg/Documents/";
echo $m_path"w"
cd  $m_path"w"
find . -type f   -mtime +1000 -exec tar -cJf $m_path"archives/$(date '+%F').tar.xz" --remove-files  '{}' \;
#find . -type f -iname "*.csv" -mtime +1200 -exec tar -cJf "/home/oleg/Documents/archives/$(date '+%F').tar.xz"  '{}' \;
