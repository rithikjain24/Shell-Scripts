#!/bin/bash

Backup_directory="/home/ubuntu/projects/*"
Backups="/home/ubuntu/BackupDir"
date=$(date +"%d-%b-%Y")

mkdir $Backups/$date
cp -r $Backup_directory $Backups/$date

echo "Backup created in $Backups/$date"
