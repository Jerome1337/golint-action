#!/bin/sh -l

cd $GITHUB_WORKSPACE

GOLINT_OUTPUT="$(golint -set_exit_status $1)"

if [ $? -ne 0 ]; then
  echo "${GOLINT_OUTPUT}"

  exit 1
fi

if [ -z "${GITHUB_OUTPUT}" ]; then
  echo "::set-output name=golint-output::Golint step succeed"
else
  echo "golint-output=Golint step succeed" >> "${GITHUB_OUTPUT}"
fi
