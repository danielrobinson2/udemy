#!/bin/bash
#for loop to catch each file
for file in "$@"; do

#define variables inside loop to give counts for each file
DEV=0
PRD=0
OTHER_ENV=0
WIN=0
NIX=0
OTHER_OS=0

#print header
echo "================"
echo "File = $file"

#begin parse for loop, adding 1 to each variable assuming environment and os are 6th and 7th letter of hostname
 for i in `cat $file`; do
  if [ ${i:5:1} == p ]
   then PRD=$(($PRD + 1))
  elif [ ${i:5:1} == d ]
   then DEV=$(($DEV + 1))
  else
   OTHER_ENV=$(($OTHER_ENV + 1))
  fi
  if [ ${i:6:1} == w ]
   then WIN=$((WIN + 1))
  elif [ ${i:6:1} == l ]
   then NIX=$((NIX + 1))
  else
   OTHER_OS=$((OTHER_OS + 1))
  fi
 done

#print results
echo "OS Windows = $WIN"
echo "OS Linux = $NIX"
echo "OS Other = $OTHER_OS"
echo "Environment Production = $PRD"
echo "Environment Development = $DEV"
echo "Environment Other = $OTHER_ENV"
done

