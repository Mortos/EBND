#!/bin/sh

# This file must be run under Rebar.
PIQI=${REBAR_DEPS_DIR}/piqi/priv/bin-"`uname -s`-`uname -m`"/piqi
PIQIC=${REBAR_DEPS_DIR}/piqi/priv/bin-"`uname -s`-`uname -m`"/piqic

if ! [ -d proto ];
then
    exit 0;
fi;

if ! [ -d piqi ];
then
    mkdir piqi;
fi;

cd proto;

for proto in *.proto;
do
    ${PIQI} of-proto -o ../src/$proto.piqi $proto;
done;

cd ..;

cd piqi;

for piqi in *.piqi;
do
    ${PIQIC} erlang -C src $piqi;
done;

cd ..;
