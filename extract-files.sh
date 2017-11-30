#!/bin/sh

set -e

export DEVICE=molly_tab
export VENDOR=google
../molly-common/extract-files.sh $@
