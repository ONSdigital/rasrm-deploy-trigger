#!/usr/bin/env bash -ex

usage ()
{
  echo "usage: $0 {environment}"
  echo
  echo
  echo "environment: prod or preprod"
  exit
}

case "$1" in
  (prod|preprod) ;;
  (*) usage ;;
esac

basedir=$(dirname "$0")
mkdir -p $basedir/preprod
mkdir -p $basedir/prod

filename=$(date +"%Y-%m-%d_%H-%M-%S")
filename_relative_path=$1/$filename
touch $basedir/$filename_relative_path
git -C $basedir add $filename_relative_path
git -C $basedir commit -m "Autogenerating release metadata $filename_relative_path"
