# NSXT Security Horizon Demo
This demo is focusing on service defined firewall and IDS features for securing Horizon VDI with NSX-T 

# Overview
`sdfwapi.py` is a python script that utilizes NSXT policy API and pre-configured json files to provision distributed firewall policy rules, IDS polices and rules along with necessary security groups and services.

# Requirements
Unix-based machine running python 2.7+

# Installation
Run `install.sh`

# Configuration
Edit `env_profile.json` file to match your setup
Edit other `*.json` files to match your setup

# Running demo
You can run the script by calling python script `sdfwapi.py` directly or by using prebuilt bash script files.
The python script expects to get 2 arguments: `.json` file and operation `create` or `delete`.

Option 1 (one-shot): `./run-vdi-demo.sh <create | delete>` - this creates or deletes: SGs, Services, Infra, Environment, Apps policies

Option 2 (modular): 
1. `modular-demo/step1_no_dfw.sh` - this creates: SGs, Services, Infra, Apps policies – all traffic is allowed, no blocking policy

2. `modular-demo/step2_dfw.sh` - Creates: VDI Environment policy for desktop isolation, modifies Apps policies to enable per-App IDFW policy (blocking traffic)

3. `modular-demo/step3_ids.sh` - Creates: Quarantine DFW rule, IDS porfiles and IDS rules

Cleanup: 
`modular-demo/all-in-one.sh delete` or `./run-vdi-demo.sh delete`

