#!/bin/bash
docker run \
  -e USER="$(id -u)" \
  -u="$(id -u)" \
  -v ~/bazel-hello:/src/bazel-hello \
  -v ~/tmp/build_output:/tmp/build_output \
  -w /src/bazel-hello \
  l.gcr.io/google/bazel:latest \
  --output_user_root=~/tmp/build_output \
  run //src/main/java/se/tink/hello:docker
