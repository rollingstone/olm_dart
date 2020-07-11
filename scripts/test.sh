#!/bin/sh -e
# Copyright (c) 2020 Famedly GmbH
# SPDX-License-Identifier: AGPL-3.0-or-later

cd "$(dirname "$0")"/..
[ -d native/olm ] && export LD_LIBRARY_PATH=$(pwd)/native/olm
pub run test -p vm,chrome
pub run test_coverage
genhtml -o coverage coverage/lcov.info || true

dart2native test/.test_coverage.dart
valgrind --show-mismatched-frees=no --exit-on-first-error=yes --error-exitcode=1 test/.test_coverage.exe
