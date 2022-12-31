#!/bin/sh
GREEN='\033[0;32m'
NC='\033[0m'
for path in `ghq list -p`
do
  cd $path
  output=$(git status -s)
  if [ -n "$output" ]; then
    echo -e "${GREEN}$path${NC}"
    echo "$output"
  fi
done
