#! /usr/bin/bash

mkdir dependencies
export OPENLANE_ROOT=$(pwd)/dependencies/openlane_src
export PDK_ROOT=$(pwd)/dependencies/pdks
export PDK=sky130B
make precheck
make run-precheck
