#!/bin/bash



cd toy-project-server

echo -e "\033[43;31mgit pull start\033[0m"

git pull origin develop

echo -e "\033[43;31mgit pull succ\033[0m"

echo -e "\033[43;31mbuild start\033[0m"

pm2 delete 0

pm2 --name toy-project-server:dev start yarn -- start:dev

echo -e "\033[43;31myarn start succ\033[0m"
