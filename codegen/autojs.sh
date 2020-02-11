#!/bin/sh -e
# Copyright (c) 2020 Famedly GmbH
# SPDX-License-Identifier: AGPL-3.0-or-later

cat <<EOF
// Auto-generated file.

@JS('Olm')
library js;

import 'src/js_promise.dart';
import 'package:js/js.dart';
import 'dart:async';

@JS("init")
external Promise<void> _init();

Future<void> init() {
  final completer = new Completer<void>();
  Promise<void> myPromise = _init();
  myPromise.then(allowInterop(completer.complete),
      allowInterop(completer.completeError));
  return completer.future;
}
EOF

sed 's/\/\/.*$//;/) {/{s/) {/);{/;:a;s/{[^{}]*}//g;/{/{N;ba}};/;/{/^import/d;/[ .]_/d;/(/s/^\( *\)/\1external /};/{/,/}/!{/external/bb};/class/{:b;s/\( *\)/\1@JS()\n\1/};/void init()/d;/^$/{x;s/^$/+/;s/-//;x;d};x;/+/{s/^.*$//;x;s/^/\n/;b};x;/./{x;s/^.*$//;x};/;$/{x;s/^.*$/-/;x}'
