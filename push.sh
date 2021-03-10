#!/usr/bin/env bash
set -eu -o pipefail
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. "$script_dir"/vars
docker push "$PYTHON_SCRIPT_IMG_LATEST"
docker push "$PYTHON_SCRIPT_IMG_VERSIONED"

