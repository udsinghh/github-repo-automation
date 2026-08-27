#!/bin/bash

REPO_NAME=$1
ORG="repo-automation-org"
TEAM="team-a"

echo "Creating repository: $REPO_NAME"

# Create private repository inside organization
gh repo create "$ORG/$REPO_NAME" --private

# Add Team-A with Read permission
gh api --method PUT \
  "/orgs/$ORG/teams/$TEAM/repos/$ORG/$REPO_NAME" \
  -f permission=pull

# Clone the newly created repository
gh repo clone "$ORG/$REPO_NAME"

# Go inside the repository
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
git push -u origin main#!/bin/bash

REPO_NAME=$1
ORG="repo-automation-org"
TEAM="team-a"

echo "Creating repository: $REPO_NAME"

# Create private repository inside organization
gh repo create "$ORG/$REPO_NAME" --private

# Add Team-A with Read permission
gh api --method PUT \
  "/orgs/$ORG/teams/$TEAM/repos/$ORG/$REPO_NAME" \
  -f permission=pull

# Clone the newly created repository
gh repo clone "$ORG/$REPO_NAME"

# Go inside the repository
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
