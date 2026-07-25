#!/bin/bash

# Simple Interest Calculator Script in Bash
# Formula: SI = (P * R * T) / 100

echo "---------------------------------------"
echo "      Simple Interest Calculator       "
echo "---------------------------------------"

# Prompt user for inputs
read -p "Enter Principal Amount (P): " p
read -p "Enter Annual Interest Rate (R %): " r
read -p "Enter Time Period in Years (T): " t

# Calculate Simple Interest using 'bc' for precision with decimals
interest=$(echo "scale=2; ($p * $r * $t) / 100" | bc)
total_amount=$(echo "scale=2; $p + $interest" | bc)

echo "---------------------------------------"
echo "Simple Interest (SI): $interest"
echo "Total Amount Payable: $total_amount"
echo "---------------------------------------"
