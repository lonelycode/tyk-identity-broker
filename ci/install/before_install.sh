#!/bin/bash

# Generated by: gromit policy
# Generated on: Fri Apr 14 16:54:38 UTC 2023

echo "Creating user and group..."
GROUPNAME="tyk"
USERNAME="tyk"

getent group "$GROUPNAME" >/dev/null || groupadd -r "$GROUPNAME"
getent passwd "$USERNAME" >/dev/null || useradd -r -g "$GROUPNAME" -M -s /sbin/nologin -c "Tyk service user" "$USERNAME"
# This stopped being a symlink in PR #3569
if [ -L /opt/tyk-gateway/coprocess/python/proto ]; then
    echo "Removing legacy python protobuf symlink"
    rm /opt/tyk-gateway/coprocess/python/proto
fi
