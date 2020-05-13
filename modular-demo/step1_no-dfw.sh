#!/bin/bash

cd ../
python sdfwapi.py groups.json create
sleep 1
python sdfwapi.py services.json create
sleep 1
python sdfwapi.py dfw_policies1.json create
sleep 1
echo 'If no errors in the output above - Infra, VDI and Apps policies have been deployed without protection!'
