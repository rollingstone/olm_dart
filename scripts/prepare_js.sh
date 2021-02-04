#!/bin/sh -e
# Copyright (c) 2020 Famedly GmbH
# SPDX-License-Identifier: AGPL-3.0-or-later

cd "$(dirname "$0")"/..
mkdir js
curl -L "https://packages.matrix.org/npm/olm/olm-3.2.1.tgz" | tar xz -C js
