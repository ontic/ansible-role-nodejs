#!/bin/bash

# Verify the installed location.
docker exec --tty ${container_id} env TERM=xterm which node

# Verify the installed version.
docker exec --tty ${container_id} env TERM=xterm node -v

# Verify the installed global packages.
docker exec --tty ${container_id} env TERM=xterm npm list -g --depth=0