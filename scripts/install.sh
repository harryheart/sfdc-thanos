#!/bin/bash

set -eo pipefail

echo "--- :package: Build job checkout directory"

pwd
ls -la


echo "--- :evergreen_tree: Build job environment"

env

echo '--- :box: run ci_feature flow' 
ls jwt

openssl enc -aes-256-cbc -nosalt -d -in ./jwt/server.key.enc -K $K -iv $IV -out ./jwt/server.key 

sfdx auth:jwt:grant --clientid $MY_SECRET_VAR --jwtkeyfile ./jwt/server.key --username $HUB_UN --setdefaultdevhubusername --setalias CCIDevHub


sfdx force:org:list

# cci flow run ci_feature --org dev