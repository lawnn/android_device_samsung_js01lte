#!/bin/sh

set -e

export VENDOR=samsung
export DEVICE=js01lte
./../../$VENDOR/hlte-common/setup-makefiles.sh $@
