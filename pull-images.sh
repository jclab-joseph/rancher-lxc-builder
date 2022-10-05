#!/bin/bash

set -e

CSM_IMAGE_LIST_FILE="${PWD}/image-list.txt"

echo "IMAGE LIST:"
cat "${CSM_IMAGE_LIST_FILE}"
echo ""

echo "START IMAGE PULL:"

pulled_images=""

while read line; do
	[ -z "$line" ] && continue
        echo $line | grep -E '^\s*#' >/dev/null && continue
	docker pull "$line"
	pulled_images+="$line "
done < "${CSM_IMAGE_LIST_FILE}"

docker save ${pulled_images} > images.tar


