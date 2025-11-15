#!/bin/sh

# Git helper commands

alias gc='git add .; git commit'
alias gcu='git add .; git commit -m "update"'
alias gcp='git add .; git commit -m "update"; git push'
alias gcl='git diff'
alias gsync='git checkout main && (git remote | grep -q "^upstream$" && git pull upstream main || git pull origin main) && git push origin main'
alias gmsync="git checkout master && git pull upstream master && git push origin master"
alias gl='git log --oneline'
alias clean="yes '' | head -n 1000; clear"


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
