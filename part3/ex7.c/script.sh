#!/bin/bash

printf 'Repo url: '
read -r url

if ( $(git clone $url output) ); then
  echo "Cloned $url successfully."
  repo=$(basename $url .git)
  if docker build -t $repo ./output; then
    if docker login; then
      username=$(docker info | sed '/Username:/!d;s/.* //')
      docker tag $repo $username/$repo
      docker push $username/$repo
    else
      echo "Docker login failed."
      exit 1
    fi
  else
    echo "Building image failed."
    exit 1
  fi
else
  echo "Cloning $url failed."
  exit 1
fi