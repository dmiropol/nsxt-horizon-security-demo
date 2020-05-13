#!/bin/bash

if [ -z "$1" ]; then 
	echo "Usage: `basename "$0"` (create | delete)"
	exit 1
else
  if [ "$1" == 'create' ]; then
    python sdfwapi.py groups.json "$1"
    python sdfwapi.py services.json "$1"
    python sdfwapi.py dfw_policies1.json "$1"
    python sdfwapi.py dfw_policies2.json "$1"
    python sdfwapi.py dfw_policies3.json "$1"
    python sdfwapi.py ids_profiles.json "$1"
    python sdfwapi.py ids_rules.json "$1"
  else
    python sdfwapi.py dfw_policies1.json "$1"
    python sdfwapi.py dfw_policies2.json "$1"
    python sdfwapi.py dfw_policies3.json "$1"
    python sdfwapi.py ids_profiles.json "$1"
    python sdfwapi.py ids_rules.json "$1"
    python sdfwapi.py services.json "$1"
    python sdfwapi.py groups.json "$1"
  fi
fi
echo 'All done'
