#!/bin/bash
cat ../UserStat.txt | awk '{ print $1"  "$3 }'  


