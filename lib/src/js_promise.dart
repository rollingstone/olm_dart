// Copyright (c) 2020 Famedly GmbH
// SPDX-License-Identifier: AGPL-3.0-or-later

@JS()
library js_promise;

import 'package:js/js.dart';

// https://github.com/dart-lang/sdk/issues/27315#issuecomment-374927185
@JS()
class Promise<T> {
  external Promise(void executor(void resolve(T result), Function reject));
  external Promise then(void onFulfilled(T result), [Function onRejected]);
}
