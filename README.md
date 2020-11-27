# fossology-desktop-wrapper
A small wrapper to run FOSSology with persistence, based on the docker-compose setup with its main repo

## setup.sh
Run for initial deployment, should be necessary only once

**Warning:** running it again deletes local data

## start.sh
Start the service (if it is not already running). The server is available under http://localhost:8081/repo

## stop.sh
Stop (or pause) the server

## logs.sh
Look at the current logs

# Persistence
All data is written to the current folder, if you move this folder with all of its contents to another machine, this also migrates all data.

# Licensing

This set of scripts is derived from FOSSology and is licensed under [GPL-2.0](https://tldrlegal.com/license/gnu-general-public-license-v2)
