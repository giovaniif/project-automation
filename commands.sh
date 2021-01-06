#!/bin/bash

function create() {
  source .env
  cd $BASE_PATH
  echo '----Creating directory----'

  mkdir $1
  cd $1
  echo '----Directory created successfully----'
  echo '----Initializing GIT and creating package.json----'

  yarn init -y

  git init
  git cb main
  git branch -D master
  touch README.md
  git add .
  git ci -m "Initial Commit :tada:"
  
  code .
}