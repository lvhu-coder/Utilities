#!/bin/bash

read -p "Commit message: " msg

git add -A
git commit -m "$msg"
git pull

branch=$(git branch --show-current)
upstream=$(git rev-parse --abbrev-ref --symbolic-full-name @{u} 2>/dev/null)


if [ -z "$upstream" ]; then
    git push -u origin "$branch"
else
    git push
fi
