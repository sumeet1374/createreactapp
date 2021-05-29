#!/bin/sh

echo "Please enter Project Name" 
read PROJNAME

PROJECTDIRCTORY="$HOME/$PROJNAME"
SOURCEDIRECTORY="$HOME/$PROJNAME/src"
PUBLICDIRECTORY="$HOME/$PROJNAME/public"
mkdir $PROJECTDIRCTORY
mkdir $SOURCEDIRECTORY
mkdir $PUBLICDIRECTORY
cp ./index.html  $PUBLICDIRECTORY
cp ./index.js  $SOURCEDIRECTORY
cp ./App.js $SOURCEDIRECTORY
cp ./App.css  $SOURCEDIRECTORY
cp ./babel.config.json  $PROJECTDIRCTORY
cp ./webpack.config.js $PROJECTDIRCTORY
cd $PROJECTDIRCTORY
npm init -y
json -I -f package.json -e "this.scripts.start = \"webpack serve --mode development\""
npm install --save-dev @babel/core @babel/cli @babel/preset-env @babel/preset-react
npm install --save-dev webpack webpack-cli webpack-dev-server style-loader css-loader babel-loader
npm install --save react react-dom
npm install --save react-hot-loader


