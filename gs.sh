#!/bin/sh
GREEN='\033[0;32m'
NC='\033[0m'
for path in `ghq list -p`
do
  cd $path
  echo -e "${GREEN}$path${NC}"
  git status -s
done
