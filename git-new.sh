#!/bin/bash

read -p "Repo name: " repo

git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin git@github.com:lvhu-coder/$repo.git
git push -u origin main

