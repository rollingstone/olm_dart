#!/bin/sh -e
# Copyright (c) 2020 Famedly GmbH
# SPDX-License-Identifier: AGPL-3.0-or-later

cd "$(dirname "$0")"/..
mkdir js
cd js
curl -O 'https://packages.matrix.org/npm/olm/olm-3.1.4.tgz'
tar xaf olm-3.1.4.tgz
