#!/bin/sh -e
# Copyright (c) 2020 Famedly GmbH
# SPDX-License-Identifier: AGPL-3.0-or-later

cd "$(dirname "$0")"/..
codegen/autojs.sh < lib/native.dart > lib/js.dart
echo '#include "olm/olm.h"' | gcc -I native/olm/include -E - | sed -n ':a;/^#.*\Wolm\//{:b;n;/#/ba;/./p;bb}' | codegen/autoffi.jq > lib/src/ffi.dart
