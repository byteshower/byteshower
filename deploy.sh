#!/bin/bash
set -e

echo "* checking out the master branch:"
git clone --single-branch --branch master git@github.com:byteshower/byteshower.github.io.git master

echo "* synchronizing the files:"
rsync -arv public/ master --delete --exclude ".git" --exclude "CNAME"
cp README.md master/

echo "* pushing to master:"
cd master
git config user.name "CircleCI"
git config user.email ${GIT_EMAIL}
git add -A
git commit -m "Automated deployment job ${CIRCLE_BRANCH} #${CIRCLE_BUILD_NUM} [skip ci]" --allow-empty
git push origin master

echo "* done"
