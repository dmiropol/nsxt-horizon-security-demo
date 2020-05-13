#!/bin/bash
cd ../
python sdfwapi.py dfw_policies2.json create
sleep 1
echo 'If no errors in the output above - VDI environment and Apps are now secured by NSX!'
