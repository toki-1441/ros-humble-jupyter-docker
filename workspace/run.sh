#!/bin/sh

if [ $# -gt 1 ]; then
  echo "Wrong number of arguments!"
  exit 1
elif [ $# -eq 1 ]; then
  jupyter-lab --allow-root --port=${1} --ip=0.0.0.0 --NotebookApp.token=''
else
  jupyter-lab --allow-root --port=8888 --ip=0.0.0.0 --NotebookApp.token=''
fi