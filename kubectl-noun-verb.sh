#!/usr/bin/env bash
shift
noun=${1}

case ${noun} in
  pods|pod|po)
    noun=pods
    ;;
  deployments|deployment|deploys|deploy)
    noun=pods
    ;;

  *)
    echo "Yo, this is bad. We don't support ${noun} (yet; PRs welcome)"
    exit 1
    ;;
esac

shift
command=${1:-get}

shift
kubectl ${command} ${noun} $@
