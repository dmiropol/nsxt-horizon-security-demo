#!/bin/bash

if [ -z "$1" ]; then 
	echo "Usage: `basename "$0"` (create | delete)"
	exit 1
else
  if [ "$1" == 'create' ]; then
  ./step1_no-dfw.sh
  sleep 1
  ./step2_dfw.sh
  sleep 1
  ./step3_ids.sh
  sleep 1
  elif [ "$1" == 'delete' ]; then
    cd ../
    python sdfwapi.py dfw_policies1.json "$1"
    sleep 1
    python sdfwapi.py dfw_policies2.json "$1"
    sleep 1
    python sdfwapi.py dfw_policies3.json "$1"
    sleep 1
    python sdfwapi.py ids_rules.json "$1"
    sleep 1
    python sdfwapi.py ids_profiles.json "$1"
    sleep 1
    python sdfwapi.py groups.json "$1"
    sleep 1
    python sdfwapi.py services.json "$1"
    sleep 1
  else
    echo "Usage: `basename "$0"` (create | delete)"
  fi
fi
echo 'All done'
