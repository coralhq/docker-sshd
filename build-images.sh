#!/bin/sh

repository=coralteam/sshd

build_push() {
  image=$1

  echo; echo "Building $image"
  docker build -t "$image" .

  echo; echo "Pushing $image"
  docker push "$image"
}

build_push $repository:base

for name in $(ls variants); do
  image="$repository:$name"
  ( cd "variants/${name}" && build_push $image . )
done
