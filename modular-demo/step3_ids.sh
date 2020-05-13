#!/bin/bash
cd ../
python sdfwapi.py ids_profiles.json create
sleep 1
python sdfwapi.py ids_rules.json create
sleep 1
python sdfwapi.py dfw_policies3.json create
sleep 1
echo 'If no errors in the output above - NSX IDS policy has been created!'
