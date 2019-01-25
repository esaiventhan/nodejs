#!/bin/bash
set -euo pipefail
cd `dirname "${BASH_SOURCE[0]}"`
echo
echo =================================================================
echo updating `pwd` ...
echo =================================================================
git_email = `git config --get user.email` || true
git_name = `git config --get user.name` || true

if [ -z "$git_email"]
  then
    echo Git user.email unset. Setting to "not@yet.com"
    git config user.email "not@yet.com"
fi
if [ -z "$git_name"]
  then
    echo Git user.name unset. Setting to "someone"
    git config user.name "someone"
fi
git status
git stash
git pull
