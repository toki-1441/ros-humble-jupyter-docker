#! /bin/bash

function usage {
  cat <<EOM
Usage: $(basename "$0") [OPTION]...
  -h          Display help
  -p VALUE    port number
EOM

  exit 2
}

PORT=8888


# 引数別の処理定義
while getopts ":p:h" optKey; do
  case "$optKey" in
    p)
      PORT=${OPTARG}
      ;;
    '-h'|'--help'|* )
      usage
      ;;
  esac
done

docker run --network=host -p ${PORT}:${PORT} -v ./workspace:/root/workspace -it humble-jupyter 