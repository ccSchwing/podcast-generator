#!/bin/bash

echo "++++++++++++++++++++++++++"

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

python3 /usr/bin/feed.py

git branch
## git add -A ; git commit -m "Update Feed" ; git push -u --set-upstream origin 01_2b
git add -A ; git commit -m "Update Feed" ; git push

echo "++++++++++++++++++++++++++"
