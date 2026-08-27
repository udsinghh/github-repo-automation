#!/bin/bash

REPO_NAME=$1
OWNER=$2

echo "Creating repository: $REPO_NAME"

# Create private repository
gh repo create "$REPO_NAME" --private

# Clone the newly created repository
git clone "https://github.com/$OWNER/$REPO_NAME.git"

# Go inside the new repository
cd "$REPO_NAME"

# Copy template files from the automation repository
cp ../template-files/* .

# Configure Git
git config user.name "github-actions[bot]"
git config user.email "github-actions[bot]@users.noreply.github.com"

# Add, commit and push files
git add .
git commit -m "Add template files"
git push origin main
