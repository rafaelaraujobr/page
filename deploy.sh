#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
# cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

# git init
git add dist
git commit -m 'deploy'
git subtree push --prefix dist origin gh-pages
#git remote update 
# if you are deploying to https://<USERNAME>.github.io
#git remote add origin 
#git push -f git@github.com:rafaelaraujobr/rafaelaraujobr.github.io.git main

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git main:gh-pages

cd -