#!/bin/bash

echo "...create temp directory..."
mkdir -p temp

echo "...copy files to temp directory..."

cp cal.sh ~/osp_repo/temp/cal.sh
cp num1.txt ~/osp_repo/temp/num1.txt
cp num2.txt ~/osp_repo/temp/num2.txt

PS3='select menu : '
select menu in "add" "sub" "div" "mul"
do
    echo "...$menu selected..."
    break
done

echo "...run calculater..."
./cal.sh $menu