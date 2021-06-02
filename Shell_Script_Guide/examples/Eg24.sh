#!/bin/bash
cat ../EmailStat.csv | awk -F ',' '{ print $1" "$3 }'  > output_Eg24.txt

