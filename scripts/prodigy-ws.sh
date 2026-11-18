#!/usr/bin/env bash
set -euo pipefail

VERSION="1.0.0"

if [[ "${1:-}" == "--version" || "${1:-}" == "-v" ]]; then
  echo "prodigy-ws ${VERSION} - Pixel Prodigy Studios"
  exit 0
fi

PROJECT_NAME="${1:-prodigy-project}"
mkdir -p "${PROJECT_NAME}"/{src,scripts,docs,config}
cat <<INNER > "${PROJECT_NAME}/README.md"
# ${PROJECT_NAME}
Initialized via \`prodigy-ws\` | Pixel Prodigy Studios (@Dream-Hoarder)
INNER
echo "[+] Initialized workspace: ${PROJECT_NAME}/"
