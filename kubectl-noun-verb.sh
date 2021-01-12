#!/usr/bin/env bash
shift
noun=${1}

case ${noun} in
  (pod|pods|po))
  noun=pods
  ;;
*)
  echo "Yo, this is bad."
  exit 1
  ;;
esac

shift
command=${1:-get}

shift
kubectl ${command} ${noun} $@
