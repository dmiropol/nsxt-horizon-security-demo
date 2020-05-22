#!/bin/bash

if [ -z "$1" ]; then 
	echo "Usage: `basename "$0"` (create | delete)"
	exit 1
else
  if [ "$1" == 'create' ]; then
    cd ../
    python sdfwapi.py groups.json "$1"
    python sdfwapi.py services.json "$1"
    python sdfwapi.py dfw_policies1.json "$1"
    python sdfwapi.py dfw_policies2_vdionly.json "$1"
    python sdfwapi.py dfw_policies2_appsonly_AD.json "$1"
    #python sdfwapi.py dfw_policies2_appsonly_IC.json "$1"
 
  elif [ "$1" == 'delete' ]; then
    cd ../
    python sdfwapi.py dfw_policies1.json "$1"
    python sdfwapi.py dfw_policies2_vdionly.json "$1"
    python sdfwapi.py dfw_policies2_appsonly_AD.json "$1"
    #python sdfwapi.py dfw_policies2_appsonly_IC.json "$1"
    python sdfwapi.py groups.json "$1"
    python sdfwapi.py services.json "$1"

  else
    echo "Usage: `basename "$0"` (create | delete)"
  fi
fi

echo 'All done!'

