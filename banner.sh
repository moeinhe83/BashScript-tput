#!/bin/bash

# Clear Terminal
clear

# Get The Number Of Lines & Column
line=$(tput lines)
column=$(tput cols)

# User Input & Calculate The Length Of User Input 
read -p "Enter Your Name => " name 
length_name=${#name}

# Calculation Of Line & Column
p_line=$((line/2))
p_column=$((column/2 - (name/2)))

# Move To The Middle Of The Screen
tput cup $p_line $p_column

# Bold The Name & Display Name 
tput bold 
echo "$name"

# Move The Command Line To The Bottom Of The Page 
tput cup $(tput lines)0

# Finish 
# Create By Moein Heshmati
