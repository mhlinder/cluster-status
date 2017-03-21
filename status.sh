#!/bin/bash

ROOTDIR='/home/hlinder/misc'
D=`date`

#du -sh /export/jobs/* | sort -hr > status.out
jobs_du=`head -n 10 status.out |
             sed 's/\/export\/jobs\///g'`

echo '---'
echo "title: Cluster status report for $D"
echo '---'
echo ''
echo '# Top users in /jobs/export'
echo ''
echo '```'
echo "$jobs_du"
echo '```'

