#!/bin/bash
cat ../EmailStat.csv | awk -F ',' '{ print $2 }'  


