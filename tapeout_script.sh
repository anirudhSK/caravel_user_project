#! /usr/bin/bash

mkdir dependencies
export OPENLANE_ROOT=$(pwd)/dependencies/openlane_src
export PDK_ROOT=$(pwd)/dependencies/pdks
export PDK=sky130B
make setup

# Synthesis and PnR using OpenLane
make user_project_wrapper

# Simulation
make simenv
make verify-all-rtl
make verify-all-gl

# Parasitic extraction
make extract-parasitics
make create-spef-mapping

# Static timing analysis
make caravel-sta

# Last steps before tapeout
make precheck
make run-precheck
