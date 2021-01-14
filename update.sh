#!/bin/bash

echo "Updating Rust..."
/home/steam/steamcmd/steamcmd.sh +login anonymous \
        +force_install_dir /home/steam/rust \
        +app_update 258550 validate \
        +quit
