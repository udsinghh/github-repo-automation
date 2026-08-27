#!/bin/bash

REPO_NAME=$1
OWNER=$2

echo "Creating repository: $REPO_NAME"

# Authenticate Git using GitHub token
gh auth setup-git

# Create private repository
gh repo create "$REPO_NAME" --private

# Clone the newly created repository
gh repo clone "$OWNER/$REPO_NAME"

# Go inside the new repository
cd "$REPO_NAME"

# Copy template files
cp ../template-files/* .

# Configure Git
git config user.name "udsinghh"
git config user.email "uditisingh1999@gmail.com"

# Create main branch
git branch -M main

# Add files
git add .

# Commit files
git commit -m "Add template files"

# Push files
git push -u origin main
