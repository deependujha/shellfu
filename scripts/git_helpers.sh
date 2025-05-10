#!/bin/sh

# Git helper functions

# Check if a git repository is clean
is_git_clean() {
    [ -z "$(git status --porcelain)" ]
}

# Get the current branch name
current_branch() {
    git rev-parse --abbrev-ref HEAD
}

# Stash changes with a message
stash_changes() {
    git stash push -m "$1"
}

# Pop the latest stash
pop_stash() {
    git stash pop
}

gpush () {
  local current_branch=$(git rev-parse --abbrev-ref HEAD)
  if [ -n "$current_branch" ]; then
    git push origin "$current_branch"
  else
    echo "Error: Could not determine the current branch name."
    return 1
  fi
}

gstatus () {
    git status
}
