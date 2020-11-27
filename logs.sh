#!/usr/bin/env bash
# SPDX-FileCopyrightText: 2020 Maximilian Huber <gh@maximilian-huber.de>
#
# SPDX-License-Identifier: GPL-2.0-only

set -ex
cd "$(dirname "$0")"
docker-compose logs
