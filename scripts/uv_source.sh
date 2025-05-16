#!/bin/sh

# assumes all your uv virutalenv are stored in `~/.uvenv`
ensure_uvenv_dir() {
  local uvenv_dir="$HOME/.uvenv"
  if [[ ! -d "$uvenv_dir" ]]; then
    echo "📁 Creating $uvenv_dir directory..."
    mkdir -p "$uvenv_dir"
  fi
}

sourceenv() {
  if [ -z "$1" ]; then
    echo "Usage: sourceenv <env_name>"
    return 1
  fi

  ensure_uvenv_dir

  local env_path="$HOME/.uvenv/$1/bin/activate"

  if [ -f "$env_path" ]; then
    source "$env_path"
    echo "Activated env: $1"
  else
    echo "❌ No such env: $1 at $env_path"
    return 1
  fi
}

editinstall() {
  if [ -z "$1" ]; then
    echo "Usage: editinstall <env_name>"
    return 1
  fi

  ensure_uvenv_dir

  local env_dir="$HOME/.uvenv/$1"
  local activate_path="$env_dir/bin/activate"

  # Create env if it doesn't exist
  if [ ! -f "$activate_path" ]; then
    echo "🔧 Creating env: $1 at $env_dir"
    uv venv "$env_dir" || return 1
  fi

  # Activate the env
  echo "🐍 Activating env: $1"
  source "$activate_path"

  # Do editable install
  echo "📦 Installing current project in editable mode with [all] extras"
  uv pip install -e .
}
