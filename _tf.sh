#!/bin/bash

docker run -v $PWD:/data --workdir=/data  terraform:dev $@
