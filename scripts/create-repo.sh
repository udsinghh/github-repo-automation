#!/bin/bash

REPO_NAME=$1

echo "Creating repository: $REPO_NAME"

gh repo create "$REPO_NAME" --private
