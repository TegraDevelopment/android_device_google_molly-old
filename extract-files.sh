#!/bin/sh

set -e

export DEVICE=tv_molly
export VENDOR=google
../molly-common/extract-files.sh $@
