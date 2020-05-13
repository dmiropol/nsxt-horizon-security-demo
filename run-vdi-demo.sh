#!/bin/bash

if [ -z "$1" ]; then 
	echo "Usage: `basename "$0"` (create | delete)"
	exit 1
else
  if [ "$1" == 'create' ]; then
    python dfwapi.py groups.json "$1"
    python dfwapi.py services.json "$1"
    python dfwapi.py policies.json "$1"
  else
    python dfwapi.py policies.json "$1"
    python dfwapi.py services.json "$1"
    python dfwapi.py groups.json "$1"
  fi
fi
echo 'All done'
