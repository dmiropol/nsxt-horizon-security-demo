#!/bin/bash
cd ../
python sdfwapi.py dfw_policies2_vdionly.json create
python sdfwapi.py dfw_policies2_appsonly_AD.json create
#python sdfwapi.py dfw_policies2_appsonly_IC.json create

echo 'All done!'
