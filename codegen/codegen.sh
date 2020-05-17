#!/bin/sh -e
# Copyright (c) 2020 Famedly GmbH
# SPDX-License-Identifier: AGPL-3.0-or-later

cd "$(dirname "$0")"/..
codegen/autojs.jq < lib/native.dart > lib/js.dart
printf '#include "%s"\n' olm/{olm,sas}.h | gcc -I native/olm/include -E - | sed -n ':a;/^#.*\Wolm\//{:b;n;/#/ba;/./p;bb}' | codegen/autoffi.jq > lib/src/ffi.dart
