#!/bin/sh
test -z "${DEBUG}" || set -o xtrace
set -o errexit

bin_path=$1

docker build . -t terraform-provider-ns1-build
docker run --rm terraform-provider-ns1-build > "${bin_path}"
chmod +x "${bin_path}"