#!/bin/bash

cd ../
python sdfwapi.py groups.json create
python sdfwapi.py services.json create
python sdfwapi.py dfw_policies1.json create

echo 'All done!'
