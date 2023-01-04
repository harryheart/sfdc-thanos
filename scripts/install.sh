#!/bin/bash

set -eo pipefail

echo "--- :package: Build job checkout directory"

pwd
ls -la


echo "--- :evergreen_tree: Build job environment"

env

echo '--- :box: run ci_feature flow' 

echo $MY_SECRET_VAR

cci flow run ci_feature --org dev