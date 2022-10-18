#! /bin/sh
#Taylor hall, 2022

echo "User: $USER"
echo "Home Directory \n`ls /home/$USER/`"
echo "Date: `date +%Y-%m-%d`"
echo "Time: `date +%H:%M:%S`"
echo "Current Directory: `pwd`"
echo "Files in CD: `ls -ltr | grep -v dwr | wc -l `"
echo "Largest File: `ls -ltrs | tail -1 | awk '{print$10}'`"
