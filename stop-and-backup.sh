#!/usr/bin/env bash
# SPDX-FileCopyrightText: 2020 Maximilian Huber <gh@maximilian-huber.de>
#
# SPDX-License-Identifier: GPL-2.0-only

set -ex
cd "$(dirname "$0")"
./stop.sh || true

backup="$(date +%F)-fossology-desktop-wrapper-backup.zip"

if [[ ! -f "$backup" ]]; then
    sudo 7z a "$backup" ./database ./repository
fi

sudo chown "$USER" "$backup"
