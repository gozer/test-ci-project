#!/bin/bash -ex

# Clone an example Python repo
# This step obviously won't be necessary if you're building a Python repo with LambCI,
# because you'll already be in the cloned repo directory
rm -rf /tmp/pytest
git clone --depth 1 https://github.com/pytest-dev/pytest /tmp/pytest
cd /tmp/pytest


# Now we can run our project's install and test steps

pip install --user tox
tox --recreate -e py27

