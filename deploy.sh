#!/usr/bin/env sh
# пример деплоя
set -e

#build
npm run build

#navigate into the build output directory
cd dist

# place .nojekyll to bypass Jekyll proccessing
echo > .nojekyll

git init
git checkout -B main
git add -A
git commit -m "deploy"

cd -