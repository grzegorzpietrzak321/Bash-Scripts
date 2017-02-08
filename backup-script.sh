#!/bin/bash
###################################################################
#
#                     backup mysql database
#
#
###################################################################

# Credentials
 username=""
 password=""
 host=""
 db_name=""
 
 backup_path="/media/backup/"
 date=$(date +"%d-%b-%Y")
 
 mysqldump -u=$username -p=$password --host=$host $db_name > $backup_path/$db_name-$date.sql
 
 # Delete files older than 30 days
 find $backup_path/* -mtime +30 -exec rm {} \;
