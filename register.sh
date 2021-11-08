#!/usr/bin/env bash

REGISTRATION_TOKEN=$1

if [ -z "$REGISTRATION_TOKEN" ]
then
    echo "Please provide a registration token"
    exit 1
fi

docker run --rm -v /home/user/gitlab-runner/gitlab-runner-config:/etc/gitlab-runner gitlab/gitlab-runner register \
  --non-interactive \
  --executor "docker" \
  --docker-image alpine:latest \
  --url "https://gitlab.com/" \
  --registration-token "${REGISTRATION_TOKEN}" \
  --description "docker-runner" \
  --tag-list "docker,refonte" \
  --run-untagged="true" \
  --locked="false" \
  --access-level="not_protected"

echo "Done"
exit 0
