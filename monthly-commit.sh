#!/bin/bash

# Set the repository URL and commit message
repository_url="git@github.com:judaicalink/dumps.git"
commit_message="Monthly commit: $(date +%Y-%m-%d)"
tag=$(date +%Y-%m-%d)

# Change to the repository directory
cd /data/dumps

# Update the repository
git pull

# Add all changes to the staging area
git add -A

# Commit the changes
git commit -m "$commit_message"

# Create a tag for the commit
git tag "$tag"

# Push the changes and tags to the remote repository
git push "$repository_url" main --tags

