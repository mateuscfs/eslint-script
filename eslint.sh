#!/bin/bash
echo "REMOVING TSLINT"
npm uninstall tslint
rm tslint.json

echo "INSTALLING ESLINT 6.8.0"
npm install eslint@6.8.0 -D

echo "INSTALLING ESLINT DEPENDENCIES"
npm install @typescript-eslint/eslint-plugin@latest eslint-config-airbnb-base@latest eslint-plugin-import@^2.21.2 @typescript-eslint/parser@latest -D

echo "INSTALLING PRETTIER AND DEPENDENCIES"
npm install prettier eslint-config-prettier eslint-plugin-prettier -D

echo "INSTALLING IMPORT RESOLVER"
npm install eslint-import-resolver-typescript -D

echo "GETTING ESLINT CONFIG"
path=${PWD}
echo $path
cd ../eslint-configure-script/

cp files/.editorconfig $path

cp files/.eslintignore $path

cp files/.eslintrc.json $path

cp files/.prettierrc.json $path

echo "RESTART YOUR VSCODE PLEASE"