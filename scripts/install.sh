#!/bin/bash

set -eo pipefail

echo "--- :package: Build job checkout directory"

pwd
ls -la


echo "--- :evergreen_tree: Build job environment"

env


echo "+++ :hammer: Example tests"

mkdir sfdx

which wget

which brew

which node

brew install pipx
pipx ensurepath
pipx install cumulusci

# wget -qO- https://developer.salesforce.com/media/salesforce-cli/sfdx-linux-amd64.tar.xz | tar xJ -C sfdx --strip-components 1
# ./sfdx/install
# sfdx --version