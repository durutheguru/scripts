#!/bin/bash

read -p "Enter File Name: " file_name

sudo find / -name $file_name 2>/dev/null
