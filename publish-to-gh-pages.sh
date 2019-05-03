#!/bin/bash
set -ev
git clone https://github.com/chianChen/chianChen.github.io .deploy_git
cd .deploy_git
git checkout master
cd ../
mv .deploy_git/.git/ ./public/
cd ./public
git config user.name  "hadronw"
git config user.email "hadronw@qq.com" 
# add commit timestamp
git add .
git commit -m "Travis CI Auto Builder at `date +"%Y-%m-%d %H:%M"`"
git push --force --quiet "https://${GH_TOKEN}@https://github.com/chianChen/chianChen.github.io" master:master