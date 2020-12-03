#!/bin/bash -ue

DEPOT=$1
shift

mkdir $DEPOT

mkdir -p /storage/artifacts
ln -s /storage/artifacts $DEPOT/artifacts

# allow identification of PkgEal
export CI=true
export PKGEVAL=true
export JULIA_PKGEVAL=true

# disable system discovery of Python and R
export PYTHON=""
export R_HOME="*"

# no automatic precompilation
export JULIA_PKG_PRECOMPILE_AUTO=0

exec "$@"
