#!/bin/bash

sudo yum update -y
echo "yum update succ"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
echo "nvm install succ"

nvm install --lts
node -e "console.log('Running Node.js ' + process.version)"
echo "Node version check"

npm install yarn -g
echo "yarn install succ"

sudo yum install git -y
echo "git install succ"

sudo yum install mariadb-server
echo "mariadb install succ"

mysql —version
echo "mariadb version"

sudo systemctl enable mariadb
echo "mariadb infinite"

sudo systemctl start mariadb
echo "mariadb start"
