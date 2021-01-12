#!/usr/bin/env bash
command=${1:-get}
shift

kubectl $command pods $@
