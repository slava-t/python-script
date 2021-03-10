#!/usr/bin/env bash
set -eu -o pipefail
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. "$script_dir"/vars
docker build -t "$PYTHON_SCRIPT_IMG_NAME" .
docker tag "$PYTHON_SCRIPT_IMG_NAME" "$PYTHON_SCRIPT_IMG_LATEST"
docker tag "$PYTHON_SCRIPT_IMG_NAME" "$PYTHON_SCRIPT_IMG_VERSIONED"

