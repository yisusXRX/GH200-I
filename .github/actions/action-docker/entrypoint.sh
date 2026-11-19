#!/usr/bin/env bash
set -euo pipefail

NOMBRE="${1:-mundo}"
MENSAJE="Hola desde Docker, $NOMBRE"

echo "$MENSAJE"

if [ -n "${GITHUB_OUTPUT:-}" ]; then
  echo "resultado=$MENSAJE" >> "$GITHUB_OUTPUT"
fi
