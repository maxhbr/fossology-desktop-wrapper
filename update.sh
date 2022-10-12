#!/usr/bin/env sh
# SPDX-FileCopyrightText: 2022 Maximilian Huber <gh@maximilian-huber.de>
#
# SPDX-License-Identifier: GPL-2.0-only

set -ex

cd "$(dirname "$0")"
./stop.sh || true
docker pull fossology/fossology

docker-compose up -d scheduler
echo "wait for 60s, before starting the web UI..."
sleep 60
docker-compose up -d
