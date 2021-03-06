#!/bin/bash
# Copyright (c) Ontic. (http://www.ontic.com.au). All rights reserved.
# See the COPYING file bundled with this package for license details.

# Verify the installed location.
docker exec --tty ${container_id} env TERM=xterm which node
# Verify the installed version.
docker exec --tty ${container_id} env TERM=xterm node -v
# Verify the global NPM location.
docker exec --tty ${container_id} env TERM=xterm bash --login -c "npm root -g"
# Verify the modules installed globally.
docker exec --tty ${container_id} env TERM=xterm bash --login -c "npm list -g --depth=0"