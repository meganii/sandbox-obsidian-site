#!/usr/bin/env bash
set -euo pipefail

if ! command -v curl >/dev/null; then
  echo "curl is required" >&2
  exit 1
fi
if ! command -v jq >/dev/null; then
  echo "jq is required" >&2
  exit 1
fi

LATEST_TAG=$(curl -s https://api.github.com/repos/gohugoio/hugo/releases/latest | jq -r '.tag_name')
if [[ -z "${LATEST_TAG}" || "${LATEST_TAG}" == "null" ]]; then
  echo "Unable to determine the latest Hugo release" >&2
  exit 1
fi

VERSION="${LATEST_TAG#v}"
ARCHIVE="hugo_extended_${VERSION}_Linux-64bit.tar.gz"
URL="https://github.com/gohugoio/hugo/releases/download/${LATEST_TAG}/${ARCHIVE}"
TMP_DIR=$(mktemp -d)
trap 'rm -rf "${TMP_DIR}"' EXIT

curl -L -o "${TMP_DIR}/${ARCHIVE}" "${URL}"

tar -xzf "${TMP_DIR}/${ARCHIVE}" -C "${TMP_DIR}" hugo

install -m 0755 "${TMP_DIR}/hugo" /usr/local/bin/hugo

echo "Installed Hugo ${LATEST_TAG} to /usr/local/bin/hugo"
