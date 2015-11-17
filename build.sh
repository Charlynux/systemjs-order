#!/bin/sh

# Cleaning external modules
rm -rf jspm_packages
rm -rf node_modules

echo 'Install dependencies...'
npm install > /dev/null 2>&1 && jspm install > NUL

rm -rf dist

echo 'Install systemjs-builder@0.14.9'
npm install systemjs-builder@0.14.9 > /dev/null 2>&1
echo 'Build'
gulp > NUL
echo 'Result for 0.14.9'
tail -8 dist/build.js | head -2

rm -rf dist

echo '\nInstall systemjs-builder@0.14.10'
npm install systemjs-builder@0.14.10  > /dev/null 2>&1
echo 'Build'
gulp > NUL
echo 'Result for 0.14.10'
tail -8 dist/build.js | head -2
